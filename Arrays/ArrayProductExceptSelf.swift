/** 
Product of Array Except Self 

https://leetcode.com/problems/product-of-array-except-self/

Notes:
- use an answer array 
- traverse in forward direction once and reverse direction 
- keep adding next element to product 


class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
       
        var answer = Array(repeating: 1, count: nums.count)
     
        var prod = 1 
        
        for i in 0..<nums.count {
            answer[i] = prod
            prod *= nums[i]
        }
        
        prod = 1
        for i in (0..<nums.count).reversed() {
            answer[i] *= prod
            prod *= nums[i]
        }
        
        return answer
        
    }
}
