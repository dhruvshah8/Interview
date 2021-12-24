/** 
Find All Duplicates 

https://leetcode.com/problems/find-all-duplicates-in-an-array/submissions/

Notes: 
- Negative Marking on indices to see duplicates 

**/


class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
                    
        var solution: [Int] = []
        var nums = nums

         for num in nums {
             if (nums[abs(num) - 1] < 0) {
                 solution.append(num)
             } else {
                 nums[abs(num) - 1] *= -1
             }
         }


         return solution 
    }
}
