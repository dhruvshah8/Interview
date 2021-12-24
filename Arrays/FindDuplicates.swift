/** 
Find Duplicate 

https://leetcode.com/problems/find-the-duplicate-number/

Notes: 
- Use Negative Marking 
- Mark each num in nums at that index negative so that if that number comes again 
  we can see that if its negative it has been reached before 

**/ 

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
    
        var nums = nums
        for num in nums {
            
            if (nums[abs(num)] < 0 ) {
                return num
            } else {
                nums[abs(num)] *= -1    
            }
            
        }
        
        return 0 
        
    }
}
