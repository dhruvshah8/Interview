/** 
 Binary Tree Level Order Traversal

https://leetcode.com/problems/binary-tree-level-order-traversal/

Notes: 
- use BFS and keep count of how many elements are each level 

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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        
        
       guard let root_ = root else {return []}
        
        var sol: [[Int]] = []
        var queue: [TreeNode] = [root_]
        var count: Int
        var depth = 0 
        
        
        while !queue.isEmpty {
            count = queue.count 

            var arr: [Int] = []
            for i in 0..<count {
                var curr: TreeNode = queue.removeFirst()
                arr.append(curr.val)
                    
                if let left = curr.left {queue.append(left)}
                if let right = curr.right {queue.append(right)}
            
            }
            sol.append(arr)
        }
        
        return sol 
        
     
    }
}
