# Merge Sorted Lists
You have two sorted lists. Merge them into one sorted list.

## Solution
The simplest solution would be to concatenate the two lists, then sort the result:
```python
## TC -> O(n logn), where n is the len of merged list
def merge_sorted_list(list1: list, list2: list):
    return sorted(list1 + list2)
```

But, we can do better. How?
By taking advantage of the fact that the two input lists are already sorted.


