!!Not Finished Yet!! 

Course Schedule

https://leetcode.com/problems/course-schedule/

Notes: 
- Make an adjacency list from edges 
- find all courses with no prerequsites 
- make graph with direction of pre-req -> next course 
- conduct BSF on each course with no pre-req 
- see if all courses were finished 

Problem Right Now: Does not detect cycles 

class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        // find all courses with no prerequsites 
        // make graph with direction of pre-req -> next course 
        // conduct BSF on each course with no pre-req 
        // see if all courses were finished 
        
        
        var allCourses = Set(0..<numCourses)
        
        
        var adj: [[Int]] = Array(repeating: [Int](), count: numCourses)
        
        for pair in prerequisites {
            adj[pair[0]].append(pair[1])
        }

        
        var noPreReqs: [Int] = []
        
        for (i,arr) in adj.enumerated() {
            if (arr == []) {
                noPreReqs.append(i)
                allCourses.remove(i)
            }
        }
        
        guard noPreReqs != [] else {return false}
        
        // reset adj and reverse 
        adj = Array(repeating: [Int](), count: numCourses)
         
        for pair in prerequisites {
            adj[pair[1]].append(pair[0])
        }
        
        

        
        for course in noPreReqs {
            var queue: [Int] = [course]
            
            while !queue.isEmpty {
                let c: Int = queue.removeFirst() 
                allCourses.remove(c)
                

                
                
                if !adj[c].isEmpty {

                    for node in adj[c] {
                        if allCourses.contains(node) {
                            queue.append(node)
                        }
                    }

                }
                
                if allCourses.isEmpty {return true}

            }
            if allCourses.isEmpty {return true}
        }
        
       
        if allCourses.isEmpty {return true}
        return false 
        
    }
}
