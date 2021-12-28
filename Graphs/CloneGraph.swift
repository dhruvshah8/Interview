/** 
Clone Graph 

https://leetcode.com/problems/clone-graph/

Notes:
- have a dictionary holding old node mapping to new node 
- use DFS 
- recursively go through each node adding the neighbours into its array 
- use the dictionary to access the new mapped node
- if dictionary doesnt have a node then create one 

**/

/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */

class Solution {
    
    var map = Dictionary<Node,Node>()
     
    func cloneGraph(_ node: Node?) -> Node? {
        if let node = node {
            
            if (map[node] != nil) {
                return map[node]
            }
            
            var newCopy = Node(node.val)
            map[node] = newCopy
            
            for v in node.neighbors {
                newCopy.neighbors.append(cloneGraph(v))
            }
            
            return newCopy    
        }
        
        return nil
        
        
    }
}
