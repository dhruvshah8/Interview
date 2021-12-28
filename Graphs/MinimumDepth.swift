/**
Minimum Depth of Binary Tree

https://leetcode.com/problems/minimum-depth-of-binary-tree/

Notes: 
- Use BFS and get count of queue to maintain which level you are on


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
    func minDepth(_ root: TreeNode?) -> Int {
       
        guard let root = root else {return 0}
        
        var depth = 1
        
        var queue: [TreeNode?] = [root]
        var count: Int
        
        while !queue.isEmpty {
            count = queue.count 
            
            for i in 1...count {
                if let node = queue.removeFirst() {
                    if (node.left == nil && node.right == nil) {
                        return depth 
                    }
                    
                    queue.append(node.right)
                    queue.append(node.left)
                }
                
      
            }
            depth += 1
            
        }
        
        return depth
        
        
    }
}
