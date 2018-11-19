//: https://leetcode.com/problems/median-of-two-sorted-arrays/

import Cocoa

func findMedianSortedArrays(_ arr1: [Int], _ arr2: [Int]) -> Double {
  var grandArr = arr1 + arr2
  grandArr = grandArr.sorted()

  //we need to know if it's going to be even
  let isEven = grandArr.count % 2 == 0

  let middle = grandArr.count / 2

  var median = 0.0

  if isEven {
    median = Double((grandArr[middle] + grandArr[middle-1]))/2.0
  } else {
    median = Double(grandArr[middle])
  }
  return median

}

let solution0 = findMedianSortedArrays([1, 3], [2])
assert(solution0 == 2)

let solution1 = findMedianSortedArrays([1, 2], [3, 4])
assert(solution1 == 2.5)
