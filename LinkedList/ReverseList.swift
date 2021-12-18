/** 
Reverse LinkedList 

https://leetcode.com/problems/reverse-linked-list/


Notes: 
- build a new list adding each list to the head 
- need two pointers



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
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var curr = head
        var newHead: ListNode?
        var temp: ListNode?
        
        while (curr != nil) {
            temp = curr?.next 
            curr?.next = newHead 
            newHead = curr 
            curr = temp
            
        }
        
        return newHead
        
        
    }
}
