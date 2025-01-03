---
title: 0252 Meeting Rooms
link: https://leetcode.com/problems/meeting-rooms
tags:
  - array
---

```python
class Solution:
    def canAttendMeetings(intervals):
        intervals.sort(lambda x: x[0])

        for i in range(1, len(intervals)):
            # if starting time of this meeting
            # is before ending of previous meeting
            # then cannot attend all meetings.
            if intervals[i][0] < intervals[i - 1][1]:
                return False

        return True
```

```go
func canAttendMeetings(intervals [][]int) bool {
  sort.Slice(intervals, func(i, j int) bool {
    return intervals[i][0] < intervals[j][0]
  })
  for i := 1; i < len(intervals); i++ {
    if intervals[i][0] < intervals[i-1][1] {
      return false
    }
  }
  return true
}
```

```c++
class Solution {
public:
  bool canAttendMeetings(vector<vector<int>>& intervals) {
    sort(intervals.begin(), intervals.end(),
        [](const vector<int>& a, const vector<int>& b) {
          return a[0] < b[0];
        });

    for (int i = 1; i < intervals.size(); ++i) {
      if (intervals[i][0] < intervals[i-1][1]) {
        return false;
      }
    }
   
    return true;
  }
}
```

- TC: O(n logn)
- SC: O(n)
- [different solution](https://prepfortech.io/leetcode-solutions/meeting-rooms)
- [another sol](https://leetcode.ca/2016-08-08-252-Meeting-Rooms/)
