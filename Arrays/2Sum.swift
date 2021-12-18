/**
Two Sum 

https://leetcode.com/problems/two-sum/

Notes: 
- use hash maps with val and index 

**/ 


class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        
        var table: [Int:Int] = [:]
        
        for (i, num) in nums.enumerated() {
            
            if let index = table[target-num] {
                return [i,index]
            }
            
            table[num] = i
            
            
        }
        
        
        
        return []
        
    }
}
