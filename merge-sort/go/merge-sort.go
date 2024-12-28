package main

import "fmt"

func mergeSort(listToSort []int) []int {
	if len(listToSort) < 2 {
		return listToSort
	}

	// 1. Divide the list in half.
	mid := len(listToSort) / 2
	left := listToSort[:mid]
	right := listToSort[mid:]

	// 2. Sort each half.
	sortedLeft := mergeSort(left)
	sortedRight := mergeSort(right)

	// 3. Merge the sorted halves.
	sortedList := make([]int, 0, len(left)+len(right))
	l, r := 0, 0

	for len(sortedList) < len(left)+len(right) {
		if l < len(left) && (r == len(right) || sortedLeft[l] < sortedRight[r]) {
			sortedList = append(sortedList, sortedLeft[l])
			l++
		} else {
			sortedList = append(sortedList, sortedRight[r])
			r++
		}
	}

	return sortedList
}

func main() {
	listToSort := []int{38, 27, 43, 3, 8, 82, 10}
	sortedList := mergeSort(listToSort)
	fmt.Println(sortedList)
}
