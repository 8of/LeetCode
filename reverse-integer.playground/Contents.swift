//: https://leetcode.com/problems/reverse-integer/

import Cocoa

func reverse(_ x: Int) -> Int {
  let shouldInvert = x < 0
  let string = String(String(abs(x)).reversed())
  let multiplier = shouldInvert ? -1 : 1
  let int = Int(string)!
  if (int < Int32.min || int > Int32.max) {
    return 0
  }
  return multiplier * int
}

let solution0 = reverse(-123)
assert(solution0 == -321)

let solution1 = reverse(1534236469)
assert(solution1 == 0)
