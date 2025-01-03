---
title: 0283 Move Zeros
link: https://leetcode.com/problems/move-zeroes/
tags:
  - array
  - two pointer
---


```c++
class Solution{
public:
  void moveZeroes(vector<int>& nums) {
    int left = 0;
    for (auto right = 0; right < nums.size(); right++) {
      if (nums[right] != 0) {
        swap(nums[left], nums[right]);
        left++;
      }
    }
  }
}
```

```c
void moveZeroes(int* nums, int numsSize) {
  int left = 0;
  for (int right = 0; right < numsSize; right++) {
    if (nums[right] != 0) {
      temp = nums[right];
      nums[right] = nums[left];
      nums[left] = temp;
      left++;
    }
  }
}
```


```go
func moveZeroes(nums []int) {
  left := 0
  for right := 0; right < len(nums); right++ {
    if nums[right] != 0 {
      swap(&nums[right], &nums[left]) {
      left++
      }
    }
  }
}

func swap(a, b *int) {
  temp := *a
  *a = *b
  *b = temp
}
```

```go
func moveZeroes(nums []int)  {
    left := 0
    temp := 0
    for right := 0; right < len(nums); right++ {
        if nums[right] != 0 {
            temp = nums[right]
            nums[right] = nums[left]
            nums[left] = temp
            left++
        }
    }
}
```

```python
class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        left = 0
        for right in range(len(nums)):
            temp = nums[right]
            nums[right] = nums[left]
            nums[left] = temp
            left += 1
```

```rust
impl Solution {
  pub fn move_zeroes(nums: &mut Vec<i32>) {
    let mut left = 0;
    for right in 0..nums.len() {
      if nums[right] != 0 {
        nums.swap(left, right);
        left += 1;
      }
    }
  }
}
```

```java
class Solution {
  public void moveZeroes(int[] nums) {
    int left = 0;
    int temp = 0;
    for (int right = 0; right < nums.length; right++) {
      if (nums[right] != 0) {
        temp = nums[right];
        nums[right] = nums[left];
        nums[left] = temp;
        left += 1;
      }
    }
  }
}
```

- TC: O(n), both the left and right pointer start at index 0 and traverse the `nums` array once, moving towards the end.
- SC: O(1)
