//: https://leetcode.com/problems/longest-substring-without-repeating-characters/

import Cocoa

func lengthOfLongestSubstring(_ s: String) -> Int {
  var s = Array(s)
  var i = 0
  var maxNum = 0
  var checkDict = [String: Int]()
  for j in 0..<s.count {
    let character = s[j]
    let string = String(character)
    if let existingIndex = checkDict[string] {
      i = max(existingIndex, i)
    }
    maxNum = max(maxNum, j - i + 1)
    checkDict[string] = j + 1
  }
  return maxNum
}

let solution0 = lengthOfLongestSubstring("abcabcbb")
assert(solution0 == 3)

let solution1 = lengthOfLongestSubstring("bbbbb")
assert(solution1 == 1)

let solution2 = lengthOfLongestSubstring("pwwkew")
assert(solution2 == 3)

let solution3 = lengthOfLongestSubstring("aab")
assert(solution3 == 2)
