/**
LinkedList Cycle 

https://leetcode.com/problems/linked-list-cycle/

Notes: 
- two pointers 
- one moving double speed 

**/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */



class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
 	
        var fast = head
	    var slow = head

        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
            if (fast === slow) { return true }
        }

        return false

        
    }
}

