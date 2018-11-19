//: https://leetcode.com/problems/string-to-integer-atoi

import Cocoa

func myAtoi(_ str: String) -> Int {

  var numberStr = ""
  var number = 0

  for character in str {

    if character == " " && numberStr.isEmpty {
      continue
    } else if Int(String(character)) != nil {
      numberStr.append(character)
    } else if (character == "+" || character == "-") && numberStr.isEmpty {
      numberStr.append(character)
    } else {
      break
    }

  }

  if let num = Int(numberStr) {
    if num > Int32.max {
      number = Int(Int32.max)
    } else if num < Int32.min {
      number = Int(Int32.min)
    } else {
      number = num
    }
  } else if numberStr.count > 1 {
    if numberStr.first == "-" {
      number = Int(Int32.min)
    } else {
      number = Int(Int32.max)
    }
  }
  return number
}

//let solution0 = myAtoi("42")
//
//let solution1 = myAtoi("   -42")
//
//let solution2 = myAtoi("4193 with words")
//
//let solution3 = myAtoi("3.14159")

let solution5 = myAtoi("words and 987")

let solution4 = myAtoi("20000000000000000000")
