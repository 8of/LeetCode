//: https://leetcode.com/problems/zigzag-conversion/

import Cocoa

func convert(_ s: String, _ numRows: Int) -> String {
  if numRows == 1 {
    return s
  }
  var s = Array(s)
  var arr = Array(repeating: "", count: numRows)
  var isIncreasing = true
  var currentIndex = 0

  for i in 0..<s.count {
    arr[currentIndex] = arr[currentIndex] + String(s[i])

    if (currentIndex == numRows - 1 && isIncreasing) || (currentIndex == 0 && !isIncreasing) {
      isIncreasing = !isIncreasing
    }

    if isIncreasing {
      currentIndex = currentIndex + 1
    } else {
      currentIndex = currentIndex - 1
    }
  }

  return arr.reduce("", {
    prev, current -> String in
    return prev + current
  })
}

let solution0 = convert("PAYPALISHIRING", 3)

let solution1 = convert("PAYPALISHIRING", 4)

let solution2 = convert("AB", 1)
