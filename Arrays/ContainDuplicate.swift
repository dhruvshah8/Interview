/** 
Contains Duplicates 

https://leetcode.com/problems/contains-duplicate/

Notes:
- Use Sets 


**/ 


class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        
        // //Solution 1: using Set
        //  return Set(nums).count != nums.count
        
        
        // Solution 2: Set
        var list = Set<Int>()
        
        for num in nums {
            if list.contains(num) {
                return true
            } else {
                list.insert(num)
            }
        }
        
        return false
        
    }
}
