# Selection Sort

##### Runtime:
- Average: O(N^2)
- Worst: O(N^2)

##### Memory:
- O(1)

You are given an array of numbers and need to put them in the right order. The selection sort algorithm divides the array into two parts: the beginning of the array is sorted, while the rest of the array consists of the numbers that still remain to be sorted.

	[ ...sorted numbers... | ...unsorted numbers... ]

It works as follows:

- Find the lowest number in the array. You must start at index 0, loop through all the numbers in the array, and keep track of what the lowest number is.
- Swap the lowest number with the number at index 0. Now, the sorted portion consists of just the number at index 0.
- Go to index 1.
- Find the lowest number in the rest of the array. This time you start looking from index 1. Again you loop until the end of the array and keep track of the lowest number you come across.
- Swap  the lowest number with the number at index 1. Now, the sorted portion contains two numbers and extends from index 0 to index 1.
- Go to index 2.
- Find the lowest number in the rest of the array, starting from index 2, and swap it with the one at index 2. Now, the array is sorted from index 0 to 2; this range contains the three lowest numbers in the array.
- And continue until no numbers remain to be sorted.

It is called a "selection" sort because at every step you search through the rest of the array to select the next lowest number.


## The code

Here is an implementation of selection sort in Swift:

```swift
func selectionSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }  // 1

  var a = array                    // 2

  for x in 0 ..< a.count - 1 {     // 3

    var lowest = x
    for y in x + 1 ..< a.count {   //  finds the lowest number
      if a[y] < a[lowest] {
        lowest = y
      }
    }

    if x != lowest {               // necessary because you can't `swap()` an element with itself
      a.swapAt(x, lowest)
    }
  }
  return a
}
```


In summary: For each element of the array, the selection sort swaps positions with the lowest value from the rest of the array. As a result, the array gets sorted from the left to the right. 

> **Note:** The outer loop ends at index `a.count - 2`. The very last element will automatically be in the correct position because at that point there are no other smaller elements left.
