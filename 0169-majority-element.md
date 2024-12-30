---
title: 0169 Majority Element
link: https://leetcode.com/problems/majority-element/
tags: 
  - array 
  - counting
---

```python
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        winner = 0
        winner_vote_diff = 0
        for num in nums:
            if winner_vote_diff == 0:
                winner = num
            if num == winner:
                winner_vote_diff += 1
            else:
                winner_vote_diff -= 1
        return winner
```

```c++
class Solution {
public:
  int majorityElement(vector<int>& nums) {
    int winner = 0;
    int winner_vote_diff = 0;
    for (int n: nums) {
      if (winner_vote_diff == 0) {
        winner = n
      }
      if (n == winner) {
        winner_vote_diff += 1;
      } else {
        winner_vote_diff -= 1;
      }
    }
    return winner;
  }
}
```

```c
int majorityElement(int* nums, int numsSize) {
int winner = 0;
  int winner_vote_diff = 0;
  int n;
  for (int i = 0; i < numsSize; ++i) {
    n = nums[i];
    if (winner_vote_diff == 0) {
      winner = n;
    }
    if (n == winner) {
      winner_vote_diff += 1;
    } else {
      winner_vote_diff -= 1;
    }
  }
  return winner;
}
```

```go
func majorityElement(nums []int) int {
    winner := 0
    winnerVoteDiff := 0
    for _, n := range nums {
        if winnerVoteDiff == 0 {
            winner = n
        }
        if n == winner {
            winnerVoteDiff += 1
        } else {
            winnerVoteDiff -= 1
        }
    }
    return winner
}```

```rust
impl Solution {
  pub fn majority_element(nums: Vec<i32>) -> i32 {
    let mut winner = 0;
    let mut winner_vote_diff = 0;
    for n in nums {
      if winner_vote_diff == 0 {
        winner = n;
      }
      if n == winner {
        winner_vote_diff += 1;
      } else {
        winner_vote_diff -= 1;
      }
    }
    return winner;
  }
}
```
