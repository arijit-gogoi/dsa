---
title: 0217 Contains Duplicate
link: https://leetcode.com/problems/contains-duplicate/
tags:
  - hash-table
---



```python
class Solution:
	def containsDuplicate(self, nums: List[int]) -> bool:
		m = defaultdict(int)

		for i in nums:
			if m[i] == 1:
				return True
			m[i] += 1
				
		return False			
```

- [default dict](https://www.freecodecamp.org/news/how-to-use-defaultdict-python/)

```go
// using struct{} in place of bool is faster. Your mileage may vary.
func containsDuplicate(nums []int) bool {
	m := make(map[int]struct{}, len(nums))
	for _, n := range nums {
		if _, ok := m[n], ok {
			return true
		}
		m[n] = struct{}{}
	}	
	return false
}
```

```c++
class Solution {
public:
	bool containsDuplicate(vector<int>& nums) {
		unordered_set<int> s;
		// s.reserve(nums.size()); // not really required
		for (int n: nums) {
			if (s.contains(n)) return true;
			s.insert(n);
		}
		return false;
	}
}
```

```c++
class Solution {
public:
	bool containsDuplicate(vector<int>& nums) {
	unordered_set<int> s(nums.begin(), nums.end());
	return s.size()	< nums.size();
	}
}
```

```rust
use std::collections::HashSet;

impl Solution {
	pub fn contains_duplicate(nums: Vec<i32>) -> bool {
		let mut s = HashSet::<i32>::new();
		for n in nums {
			if !s.insert(n) { // if you are not able to insert it means there is a duplicate
				return true;	
			}
		}
		false
	}
}

```