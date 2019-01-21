// https://leetcode.com/problems/integer-to-roman/

class Solution {

  private let romanNumbers: [Int: [Int: String]] = [
    1: [
      0: "",
      1: "I",
      2: "II",
      3: "III",
      4: "IV",
      5: "V",
      6: "VI",
      7: "VII",
      8: "VIII",
      9: "IX",
    ],
    10: [
      0: "",
      1: "X",
      2: "XX",
      3: "XXX",
      4: "XL",
      5: "L",
      6: "LX",
      7: "LXX",
      8: "LXXX",
      9: "XC",
    ],
    100: [
      0: "",
      1: "C",
      2: "CC",
      3: "CCC",
      4: "CD",
      5: "D",
      6: "DC",
      7: "DCC",
      8: "DCCC",
      9: "CM",
    ],
    1000: [
      0: "",
      1: "M",
      2: "MM",
      3: "MMM",
    ],
  ]
  
  // rules:
  // 1-3 : adds after
  // 4 : adds before
  // 6-8 : adds after
  // 9 : adds before
  // 0, 5 : doesn't add anything
  
  // process:
  // separate to thounthands, hundreds, tens, ones
  // represent every part in String
  // merge in one String
  
  func intToRoman(_ num: Int) -> String {
    var leftovers = num
    
    let numberString = [1000, 100, 10, 1].reduce("", {
      accumulated, partition in
      let wholePartition = leftovers / partition
      let partitionString = romanNumbers[partition]![wholePartition]!
      leftovers = leftovers % partition
      return "\(accumulated)\(partitionString)"
    })
    
    return numberString
  }
  
}

let solution0 = Solution().intToRoman(3)
assert(solution0 == "III")

let solution1 = Solution().intToRoman(4)
assert(solution1 == "IV")

let solution2 = Solution().intToRoman(9)
assert(solution2 == "IX")

let solution3 = Solution().intToRoman(58)
assert(solution3 == "LVIII")

let solution4 = Solution().intToRoman(1994)
assert(solution4 == "MCMXCIV")


