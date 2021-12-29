DFS TEMPLATE: 

1. Check neccesary conditions (make sure its in bounds etc)
2. Process Cell 
3. Call DFS on all adjjacent cells 


- GOOD GRAPH QUESTION (REVIEW!!)

 
Pacific Atlantic Water Flow

https://leetcode.com/problems/pacific-atlantic-water-flow/

Notes: 
- Use DFS for each bordering edge to ocean 
- create two Bool arrays for each cordinate see if it connects to that ocean 




class Solution {
    
    
    func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
        
        
        let row = heights.count
        let col = heights[0].count 
        
        var pacific: [[Bool]] = Array(repeating: Array(repeating: false, count: col), count: row)
        var atlantic: [[Bool]] = Array(repeating: Array(repeating: false, count: col), count: row)
        
 
        
        
        func dfs(_ i: Int, _ j: Int, _ prev: Int, _ s: inout [[Bool]]) {
        
            // intial conditions 
            if i < 0 || j < 0 || i == row || j == col { return }
            if (prev > heights[i][j]) {return}
            if (s[i][j] == true) {return}
            
            

            // Process Cell 
            s[i][j] = true
        

            // call DFS 
            // dfs(i,j,heights[i,j],&s)
            dfs(i+1,j,heights[i][j],&s)       
            dfs(i-1,j,heights[i][j],&s)
            dfs(i,j+1,heights[i][j],&s)
            dfs(i,j-1,heights[i][j],&s)
        
        }
        
        
        // call DFS on each bordering edge: 
        for i in 0..<row {
            dfs(i,0,heights[i][0],&pacific)
            dfs(i,col-1,heights[i][col-1],&atlantic)
        }
        
        for j in 0..<col {
            dfs(0,j,heights[0][j],&pacific)
            dfs(row-1,j,heights[row-1][j],&atlantic)
        }
        
        
        // Merge both arrays: 
        var res = [[Int]]()
        
        for i in 0..<row {
            for j in 0..<col {
                if pacific[i][j] && atlantic[i][j] {
                    res.append([i,j])
                }
            }
        }
        return res
        
        
        
        
        
        
    }
    
    

}
