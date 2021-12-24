/** 
Rotate List 

https://leetcode.com/problems/rotate-list/submissions/

Notes: 
            Get length 
            k = k % length 
            find the newHead -> = length - k from the begining 
            Keep track of element before newHead (prevToStart) and set .next of that to be null
            connect end of list with begining 

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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
     
        /** 
            Get length 
            k = k % length 
            find the newHead -> = length - k from the begining 
            Keep track of element before newHead (prevToStart) and set .next of that to be null
            connect end of list with begining 
        **/
        
        var length = 1 
        var curr = head 
        while (curr?.next != nil) {
            length += 1
            curr = curr?.next
        }
        
        var prevToStart = curr // end of list 
        var start = head
        
        var k = k
        k = k % length 
        
        if (k == 0) {return head}

        for _ in 1...(length - k) {
            if (start?.next == nil) {
                start = head
            } else {
                start = start?.next 
            }
            
            if (prevToStart?.next == nil) {
                prevToStart = head
            } else {
                prevToStart = prevToStart?.next
            }
            
        }

        if (prevToStart?.next == nil) {
            return head 
        } else {
            prevToStart?.next = nil
            curr = start 
            while (curr?.next != nil) {
                curr = curr?.next
            }
            curr?.next = head 
            return start
        }
        
    }
}
