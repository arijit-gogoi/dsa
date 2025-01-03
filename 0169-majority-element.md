---
title: 0169 Majority Element
link: https://leetcode.com/problems/majority-element/
tags: 
  - array 
  - counting
---
- This is the Boyer Moore Voting Algorithm.
- The majority element must appear more than n/2 times.
- TC: O(n)
- SC: O(1)
- It's important to note that if the problem statement didn't guarantee the existence of a majority element, a second pass would be necessary to confirm that our candidate m is indeed the majority by counting its total occurrences in nums and comparing it to n / 2.

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

```ts
function majorityElement(nums: number[]): number {
    let winner: number = 0;
    let votesAccumulated: number = 0;
    for (const n of nums) {
        if (votesAccumulated == 0) {
            winner = n;
        }
        if (n == winner) {
            votesAccumulated += 1;
        } else {
            votesAccumulated -= 1;
        }
    }
    return winner;
};
```