/** 
 Convert Sorted Array to Binary Search Tree

https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

Notes: 
- Use recursion to build left and right nodes of tree 

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
    func sortedArrayToBST(_ arr: [Int]) -> TreeNode? {
    let midpoint = arr.count / 2

    guard arr.count > 0 else {return nil}
    
    guard arr.count > 1 else {
        return TreeNode(arr[0])
    }
    
    var tree = TreeNode(arr[midpoint])
    tree.left = sortedArrayToBST(Array(arr[0..<midpoint]))
    tree.right = sortedArrayToBST(Array(arr[(midpoint+1)..<arr.count]))
    
    return tree
    }
}
