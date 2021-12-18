/**
Remove Nth Last Node 

https://leetcode.com/problems/remove-nth-node-from-end-of-list/

Notes: 
- use two pointers and make a window size of n 
- shift window til end to get the last nth node 
- naive aproach: get length in first pass 




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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    
        // SOLUTION 1: get length 
//         var length = 0 
//         var dummy: ListNode? = ListNode(-1)
//         dummy?.next = head  
//         var curr = head 
        
//         while (curr != nil) {
//             length += 1
//             curr = curr?.next
//         }
        
//         curr = dummy 
//         while (curr != nil) {
//             if (length == n) {
//                 curr?.next = curr?.next?.next    
//             }
//             length -= 1
//             curr = curr?.next
//         }
        
//         return dummy?.next
        
        
        // SOLUTION 2: 2 POINTER 
        
       
        var dummy:ListNode? = ListNode(-1)
        dummy?.next = head
        
        
         var slow = dummy 
        var fast = dummy 
        
        var i = 0
        while (i != n) {
            fast = fast?.next 
            i += 1
        }
        
        while (fast?.next != nil) {
            fast = fast?.next 
            slow = slow?.next 
        }
        
        slow?.next = slow?.next?.next
        
        return dummy?.next
        
    }
    
}
