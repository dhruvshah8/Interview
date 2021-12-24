/** 
All Disappeared Numbers 

https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

Notes: 
- Solution 1: mark all numbers (-1) if they in the list and remove all (-1) 
              to find disappered numbers 

- Solution 2: use Sets 

**/ 

// Solution 1
class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
 
        var solution: [Int] = Array(1...nums.count)
        
        
        for num in nums {
            solution[num - 1] = -1 
        }
        
        solution.removeAll(where: { $0 == -1 })
        return solution 
        
    }
}


/** 
Solution 2: 

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        
        var list: Set = Set<Int>()
        var returnArray:[Int] = []
        
        for num in nums {
            list.insert(num)
        }
        
        for i in 1...nums.count {
            if (!list.contains(i)) {
                returnArray.append(i)
            }
        }
        return returnArray
        
    }
}

**/

