// NOT FINISHED


/** 
Route Between Nodes 

CTCI 4.1 

Given Directed graph, find whethere a path exists between two nodes

**/


struct Graph {
 
  let directed: Bool 
  var adj = Dictionary<Int, [Int]>()
  
  init (directed d: Bool) {
    directed = d
  } 
  
  mutating func addVertex(_ u: Int) {
    adj[u] = [Int]()
  }
  
  mutating func addEgde(_ u: Int, _ v: Int) {
    if (adj[u] == nil) {
      addVertex(u)
    }
    if (adj[v] == nil) {
      addVertex(v)
    }
    
    adj[u]?.append(v) 
  }
}


var graph = Graph(true) 

graph.addEdge(1,2)
graph.addEdge(2,3)
graph.addEdge(3,4) // created a path from 1->4 
graph.addEdge(3,1)
graph.addEdge(2,4)
graph.addEdge(4,1)


assert(graph.routeBetween(1,4) == true)
assert(graph.routeBetween(2,1) == true)
assert(graph.routeBetween(4,3) == false)

// assume each Int repersents a Node and no number will duplicate 

// DFS Solution: 
extension Graph {
  
  func routeBetween(_ u: Int, _ v: Int) -> Bool {
    if (u == v) {
      return true
    }
    
    adj.switchKey(u, (u * -1))
    for node in adj[u] { 
      if (node >= 0) {
         if (routeBetween(node,v)) {
           return true
         }
      }
    }
    
    return false 
    
  }
  
  
}


extension Dictionary {
    mutating func switchKey(fromKey: Key, toKey: Key) {
        if let entry = removeValue(forKey: fromKey) {
            self[toKey] = entry
        }
    }
}
















