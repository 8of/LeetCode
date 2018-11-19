//: https://leetcode.com/problems/add-two-numbers/

import Cocoa

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?, _ oldExtra: Int = 0) -> ListNode? {
  let val1 = l1?.val != nil ? l1!.val : 0
  let val2 = l2?.val != nil ? l2!.val : 0
  var extra = 0
  var val3 = val1 + val2 + oldExtra
  if (val3 >= 10) {
    val3 = val3 - 10
    extra = 1
  }
  let l3 = ListNode(val3)
  if (l1?.next != nil || l2?.next != nil) {
    var next = addTwoNumbers(l1?.next, l2?.next, extra)
    if let nextVal = next?.val { } else if (extra > 0) {
      next = addTwoNumbers(nil, nil, extra)
    }
    l3.next = next
  } else if (extra > 0) {
    l3.next = addTwoNumbers(nil, nil, extra)
  }
  return l3
}

// Check

let node02 = ListNode(3);
let node01 = ListNode(4);
node01.next = node02
let node00 = ListNode(2);
node00.next = node01

let node12 = ListNode(4);
let node11 = ListNode(6);
node11.next = node12
let node10 = ListNode(5);
node10.next = node11

var check0 = addTwoNumbers(node00, node10)
while check0 != nil {
  print(check0!.val)
  check0 = check0!.next
}

print("---")

let node20 = ListNode(5);
let node30 = ListNode(5);

var check1 = addTwoNumbers(node20, node30)
while check1 != nil {
  print(check1!.val)
  check1 = check1!.next
}

print("---")

let node40 = ListNode(1);
let node51 = ListNode(9);
let node50 = ListNode(9);
node50.next = node51

var check2 = addTwoNumbers(node40, node50)
while check2 != nil {
  print(check2!.val)
  check2 = check2!.next
}
