//: https://leetcode.com/problems/palindrome-number/

import Cocoa

func isPalindrome(_ x: Int) -> Bool {
  return String(x) == String(String(x).reversed())
}

let solution0 = isPalindrome(121)
assert(solution0)

let solution1 = isPalindrome(-121)
assert(!solution1)
