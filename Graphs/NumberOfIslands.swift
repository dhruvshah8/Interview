

Number of Islands 

https://leetcode.com/problems/number-of-islands/

Notes: 
- Use DFS recursively 
- Essentially finding blocks of adjacent 1's 
- Technique: Call DFS on each 1 in the matrix, set every adjacent 1 (the island) to 1 as well 
- Count how many times recusrive call happens to see how many islands
- RMBR: use inout and & to get memeory location to edit varaibles for functions 


 


class Solution {
    

    func numIslands(_ grid: [[Character]]) -> Int {
        
        
        var count = 0
        var newGrid = grid
       
        for i in 0..<newGrid.count {
           for j in 0..<newGrid[i].count {
               
               if (newGrid[i][j] == "1") {
                   dfs(&newGrid, i, j)
                   count += 1
               }

           }
       }
        
        return count
    }
    
    
    func dfs(_ newGrid: inout [[Character]], _ i: Int, _ j: Int) {
        
        // Check Conditions of Cell 
        // out of bounds
        if (i < 0 || i >= newGrid.count || j < 0 || j >= newGrid[0].count) {
            return 
        }
        
        // water
        if (newGrid[i][j] == "0") {
            return
        }
        
        
        // Process Cell 
        // set land to water to avoid repeating 
        newGrid[i][j] = "0"
        
        // Call DFS 
        dfs(&newGrid, i-1,j)
        dfs(&newGrid, i, j-1)
        dfs(&newGrid, i+1, j) 
        dfs(&newGrid, i, j+1)
            
        
    }
}
