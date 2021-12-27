struct Graph {
   let directed: Bool
   
   init(directed d: Bool) {
     directed = d
   }
       
    
     
  var adj = Dictionary<Int, [Int]>()

  mutating func addVertex(_ v: Int) {
    adj[v] = [Int]()
  }

  mutating func addEdge(from v: Int, to u: Int) {
    if adj[v] == nil {
      addVertex(v)
    }
    if adj[u] == nil {
      addVertex(u)
    }

    adj[v]?.append(u)

    if !directed {
      adj[u]?.append(v)
    }

    }
}
