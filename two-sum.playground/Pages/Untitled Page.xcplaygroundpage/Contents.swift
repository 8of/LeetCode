//: https://leetcode.com/problems/two-sum/

// Given an array of integers, return indices of the two numbers such that they add up to a specific target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.

import Cocoa

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var indexes: [Int: Int] = [:]

  for (offset, element) in nums.enumerated() {
    let newElement = target - element

    if let index = indexes[newElement] {
      return [index, offset]
    }
    indexes[element] = offset
  }
  fatalError()
}

let result0 = twoSum([2, 7, 11, 15], 9);
assert(result0 == [0, 1])

let result1 = twoSum([3, 2, 4], 6);
assert(result1 == [1, 2])

let firstParam = [230,863,916,585,981,404,316,785,88,12,70,435,384,778,887,755,740,337,86,92,325,422,815,650,920,125,277,336,221,847,168,23,677,61,400,136,874,363,394,199,863,997,794,587,124,321,212,957,764,173,314,422,927,783,930,282,306,506,44,926,691,568,68,730,933,737,531,180,414,751,28,546,60,371,493,370,527,387,43,541,13,457,328,227,652,365,430,803,59,858,538,427,583,368,375,173,809,896,370,789]
let result2 = twoSum(firstParam, 542);
assert(result2 == [28, 45])
