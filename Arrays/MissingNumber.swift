/** 
Missing Numer 

https://leetcode.com/problems/missing-number/

Notes:
- Use Sum and find difference 
**/ 



class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum_real = 0
        var sum_acc = 0
        
        for (i,num) in nums.enumerated() {
            sum_real += num
            sum_acc += i
        }
        
        sum_acc += nums.count 
        
        return (sum_acc - sum_real)
    }
}
