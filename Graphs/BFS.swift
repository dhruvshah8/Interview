// Say we get an array of edges in bi-directed graph and we wish to search 
// i.e: [0,1] and [1,2] would be an edge in the graph in [[0,1][1,2]]

        
      
class Solution {
    func BFS(_ edges: [[Int]], _ start: Int, _ end: Int) -> Bool {

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

            // Visit Node HERE: 
            

            // Look through every neighbour and add node to queue to be visited
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
    }
}
      
      
      
      
      
   
