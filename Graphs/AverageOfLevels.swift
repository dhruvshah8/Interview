/** 
Average of Levels in Binary Tree

https://leetcode.com/problems/average-of-levels-in-binary-tree/

Notes:
- Use BFS becasue we want to look at each level 
- Technique: Get the count of the queue and pop that amount off the queue to know how many elemenents in that level to view 


**/


/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        
        guard let root = root else {return []}
        
        var solution: [Double] = []

        
        var queue: [TreeNode?] = [root]
        
        
        
        var sum = 0 
        var count = 1
        var level = 0
        
        while !queue.isEmpty {
        
            var count = queue.count 
            
        
            for i in 1...count {
               
                if let node = queue.removeFirst()  {
                    sum += node.val 
                    if (node.left != nil) {
                        queue.append(node.left)
                    }
            
                    if (node.right != nil) {
                        queue.append(node.right)
                    }        
                }
            }
                

            solution.append(Double(sum)/Double(count))
            sum = 0
            
            
        }
        return solution
    }
}
