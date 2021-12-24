/** 
Single Number 

https://leetcode.com/problems/single-number/

Notes: 
- sum the set of all numbers minus the actual sum to find the one number not
  diplicated 

**/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        // Array of size: 1
        guard nums.count > 2 else {return nums[0]}  
    
    
        let distinctNums = Set(nums)
    
        return distinctNums.reduce(0, +) * 2 - nums.reduce(0, +)
}
        
 
    }
}
