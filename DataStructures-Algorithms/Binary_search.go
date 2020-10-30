package main

import "fmt"

func binarySearch(arr []int, val int) bool {

	lv := 0
	hv := len(arr) - 1

	for lv <= hv {
		cv := (low + high) / 2

		if arr[cv] < val {
			lv = cv + 1
		} else {
			hv = cv - 1
		}
	}

	if lv == len(arr) || arr[lv] != val {
		return false
	}

	return true
}

func main() {
	items := []int{90,75,35,78,52,96,21,43,22}
	if binarySearch(items, 56) {
		fmt.Println("Item found")
	} else {
		fmt.Println("Item is not found")
	}
}
