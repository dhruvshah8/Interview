/**
Reverse List II 

https://leetcode.com/problems/reverse-linked-list-ii/

Notes: 
- reverse in place from left to right and then connect prevToStart node with reversed list

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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        
        guard left != right else {return head}
        guard right>left else { return head }
        
        
        var start: ListNode? = head 
        var prevToStart: ListNode? 
        
        
        var i = 1 
        while (i < left) {
            i += 1
            prevToStart = start 
            start = start?.next
        }
        
        
        // Now we have prev to start = nil or previous node 
        // start = left position node 
        
        
        var curr = start 
        var prev: ListNode? 
        var temp: ListNode? 
        
        while (i <= right) {        
            temp = curr?.next 
            curr?.next = prev 
            prev = curr 
            curr = temp
            i += 1
        }

        start?.next = curr
        
        if (prevToStart == nil) {
            return prev
        }else {
            prevToStart?.next = prev 
            return head
        }
    }
}
