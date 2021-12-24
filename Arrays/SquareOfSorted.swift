/**
Squares of Sorted Array 

https://leetcode.com/problems/squares-of-a-sorted-array/

Notes: 
- Use 2 Pointers 
- One at the begining and one at the end 
- Find largest number using absolute value 

**/

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var solution = Array(repeating: 0, count: nums.count)
        
        var i = 0
        var j = nums.count - 1
        var pos = nums.count - 1
        
        
        while (i != j) {
            if (abs(nums[i]) >= abs(nums[j])) {
                solution[pos] = nums[i] * nums[i]
                i += 1
                pos -= 1 
            } else {
                solution[pos] = nums[j] * nums[j]
                j -= 1
                pos -= 1   
            }
        }
        
        solution[0] = nums[i] * nums[i]
        return solution   
        
    }
}
