/** 
Swap Pairs of Nodes

https://leetcode.com/problems/swap-nodes-in-pairs/

Notes: 

Approach 1: Itterative [ O(n) time and O(1) space ] 
- go through list and swap nodes one by one 

Aproach 2: Recursive [ O(n) time and O(n) space ]
- recrusively handle each pair of nodes 

**/


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */






class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        
        
        var head = head 
        var curr = head
        var nextPair: ListNode?
        var prev: ListNode? 
        
        while (curr != nil && curr?.next != nil) {
            nextPair = curr?.next?.next
            
            
            curr?.next?.next = curr
            
            
            if (curr === head) {
                head = curr?.next
            } else {
                prev?.next = curr?.next
            }

            prev = curr
            curr = nextPair
        }
        
        if (curr == nil) {
            prev?.next = nil    
        } else {
            prev?.next = curr
        }
        
 
        return head
 
    }
}




// class Solution {

//     func swapPairs(_ head: ListNode?) -> ListNode? {
	    
//        guard let head = head else { return nil }
// 	      guard head.next != nil else {return head}
        
//        var next = head.next 
// 	      head.next = swapPairs(next?.next)
// 	      next?.next = head
//        return next

//     }
// }

        
