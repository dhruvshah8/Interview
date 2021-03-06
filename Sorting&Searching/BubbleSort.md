# Bubble Sort

Bubble sort is a sorting algorithm that is implemented by starting in the beginning of the array and swapping the first two elements only if the first element is greater than the second element. This comparison is then moved onto the next pair and so on and so forth. This is done until the array is completely sorted. The smaller items slowly “bubble” up to the beginning of the array. Sometimes this algorithm is refered as Sinking sort, due to the larger, or heavier elements sinking to the end of the array.

##### Runtime:
- Average: O(N^2)
- Worst: O(N^2)

##### Memory:
- O(1)

### Implementation:

The implementation will not be shown as the average and worst runtimes show that this is a very inefficient algorithm. However, having a grasp of the concept will help you understand the basics of simple sorting algorithms.

Bubble sort is a very simple sorting algorithm, it consists in comparing pairs of adjacent elements in the array, if the first element is larger, swap them, otherwise, you do nothing and go for the next comparison.
This is accomplished by looking through the array `n` times, `n` being the amount of elements in the array.

![animated gif of the bubble sort algorithm](https://s3.amazonaws.com/codecademy-content/programs/tdd-js/articles/BubbleSort.gif)


#### Code
```swift
for i in 0..<array.count {
  for j in 1..<array.count {
    if array[j] < array[j-1] {
      let tmp = array[j-1]
      array[j-1] = array[j]
      array[j] = tmp
    }
  }
}
return array
```

#### Optimization
The bubble sort algorithm can be easily optimized by observing that the `n-th` pass finds the `n-th` largest element and puts it into its final place. So, the inner loop can avoid looking at the last `n-1` items when running for the `n-th` time:

```swift
for i in 0..<array.count {
  for j in 1..<array.count - i {
    if array[j] < array[j-1] {
      let tmp = array[j-1]
      array[j-1] = array[j]
      array[j] = tmp
    }
  }
}
return array
```

The only change made was on the second line, changing the interval from `1..<array.count` to `1..<array.count - i`, effectively cutting the number of comparisons by half.

The ordering with the optimized code would look something like this for the array  `[5, 1, 4, 2, 8]`:

##### First Pass
[ **5 1** 4 2 8 ] -> [ **1 5** 4 2 8 ], Swaps since 5 > 1

[ 1 **5 4** 2 8 ] -> [ 1 **4 5** 2 8 ], Swap since 5 > 4 

[ 1 4 **5 2** 8 ] -> [ 1 4 **2 5** 8 ], Swap since 5 > 2 

[ 1 4 2 **5 8** ] -> [ 1 4 2 **5 8** ], Now, since these elements are already in order (8 > 5), algorithm does not swap them. 

*by the end of the first pass, the last element is guaranteed to be the largest*

##### Second Pass
[ **1 4** 2 5 8 ] -> [ **1 4** 2 5 8 ]

[ 1 **4 2** 5 8 ] -> [ 1 **2 4** 5 8 ], Swap since 4 > 2 

[ 1 2 **4 5** 8 ] -> [ 1 2 **4 5** 8 ], As the first loop has occured once, the inner loop stops here, not comparing 5 with 8

##### Third Pass
[ **1 2** 4 5 8 ] -> [ **1 2** 4 5 8 ]

[ 1 **2 4** 5 8 ] -> [ 1 **2 4** 5 8 ] again, stoping one comparison short

##### Fourth Pass
[ **1 2** 4 5 8 ] -> [ **1 2** 4 5 8 ]

There is no Fifth pass

