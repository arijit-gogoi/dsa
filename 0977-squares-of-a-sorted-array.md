---
title: 0977 Squares of a Sorted Array
link: https://leetcode.com/problems/squares-of-a-sorted-array
tags:
  - array
  - two pointer
  - sorting
---

```c++
class Solution {
public:
  vector<int> sortedSquares(vector<int>& nums) {
    int size = nums.size();
    vector<int> res(size);

    int l = 0;
    int r = size - 1;
    int pos = size - 1;

    while (l <= r) {
      int left = nums[l];
      int right = nums[r];
      if (left * left > right * right) {
        res[pos] = left * left;
        l += 1;
      } else {
        res[pos] = right * right;
        r -= 1;
      }
      pos -= 1;
    }
    return res;
  }
}
```

```go
func sortedSquares(nums []int) []int {
  n := len(nums)
  res := make([]int, n)

  l := 0
  r := n-1
  pos := n-1

  for l <= r {
    left := nums[l]
    right := nums[r]
    if left * left > right * right {
      res[pos] = left * left
      l += 1
    } else {
      res[pos] = right * right
      r += 1
    }
    pos -= 1
  }
  return res
}
```

```python
class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        n = len(nums)
        res = [0] * n
        l, r, i = 0, n-1, n-1

        while l <= r:
            left, right = nums[l], nums[r]
            if left * left > right * right:
                res[i] = left * left
                l += 1
            else:
                res[i] = right * right
                r -= 1
            i -= 1
        return res
```


