// Say we get an array of edges in bi-directed graph and we wish to search 
// i.e: [0,1] and [1,2] would be an edge in the graph in [[0,1][1,2]]

class Solution {
    func BFS(_ n: Int, _ edges: [[Int]], _ start: Int, _ end: Int) -> Bool {
      
      guard !edges.isEmpty else { return true }
      
      var adj: [Int: [Int]] = [:]
      
      // make adjecency list: 
      for edge in edges {
        adj[edge[0]].append(edge[1])
        adj[edge[0]].append(edge[1])
      }
      
      
      var queue: [Int] = [start]  
      var visited: Set<Int> = []
      

      while !queue.isEmpty {
            
        let vertex: Int = queue.removeFirst()
        
        // make sure vertex isnt visited otherwise continue 
        guard !visited.contains(vertex) else {continue}
        
    
        guard let neighbors: [Vertex] = adjacencyList[vertex] else { 
          visited.insert(vertex) 
          continue  // Some vertices can have no neighbors.  
        }
        
        for neighbor in neighbors {
                
          if neighbor == end { 
            return true // Found a solution
          } else {
            queue.append(neighbor) // Register who should be searched next
          }
          
        }
        
        
        visited.insert(vertex) // Prevent repeated explorations (3/3)
        
      }
      
      return false
      
    }
  
}


        
      
      
      
      
      
      
      
   
