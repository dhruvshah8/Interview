/** 
Route Between Nodes 

CTCI 4.1 && 
https://leetcode.com/problems/find-if-path-exists-in-graph/

Given a graph, find whethere a path exists between two nodes

Notes: 
- Convert array of edges into adjecency list 
- Use BFS algorithm 

**/

class Solution {
    func validPath(_ n: Int, _ edges: [[Int]], _ start: Int, _ end: Int) -> Bool {

        guard !edges.isEmpty else {return true}
        
        
        // make adjececny list: 
        
        var adj: [Int: [Int]] = [:]
        for edge in edges {
            adj[edge[0], default: []].append(edge[1])
            adj[edge[1], default: []].append(edge[0])
        }
        
        var visited = Set<Int>()
        var queue: [Int] = [start]
        
        
        while !queue.isEmpty {
            
            let vertex: Int = queue.removeFirst() 

            if (vertex == end) {
                return true 
            }
          
            guard let neibours = adj[vertex] else {
                continue
            }
            
            for node in neibours {
                if (!visited.contains(node)){
                    visited.insert(node)
                    queue.append(node)
                }
            }
            
        }
        
        return false
        
    }
}

