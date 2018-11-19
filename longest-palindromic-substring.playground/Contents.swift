//: https://leetcode.com/problems/longest-palindromic-substring/

import Cocoa

func longestPalindrome(_ s: String) -> String {
  var s = Array(s)
  var res = ""
  var resCount = 0
  for (idx_x, _) in s.enumerated() {
    var fwdStr = ""
    var revStr = ""
    let offsetIdx = s.index(s.startIndex, offsetBy: idx_x)
    for (idx_y, c_y) in s[offsetIdx...].enumerated() {
      let charCount = idx_y + 1
      fwdStr.append(c_y)
      revStr = String(c_y) + revStr
      if (fwdStr == revStr) && (charCount > resCount) {
        res = fwdStr
        resCount = charCount
      }
    }
  }
  return res
}

let solution0 = longestPalindrome("babadada")

let solution1 = longestPalindrome("slvafhpfjpbqbpcuwxuexavyrtymfydcnvvbvdoitsvumbsvoayefsnusoqmlvatmfzgwlhxtkhdnlmqmyjztlytoxontggyytcezredlrrimcbkyzkrdeshpyyuolsasyyvxfjyjzqksyxtlenaujqcogpqmrbwqbiaweacvkcdxyecairvvhngzdaujypapbhctaoxnjmwhqdzsvpyixyrozyaldmcyizilrmmmvnjbyhlwvpqhnnbausoyoglvogmkrkzppvexiovlxtmustooahwviluumftwnzfbxxrvijjyfybvfnwpjjgdudnyjwoxavlyiarjydlkywmgjqeelrohrqjeflmdyzkqnbqnpaewjdfmdyoazlznzthiuorocncwjrocfpzvkcmxdopisxtatzcpquxyxrdptgxlhlrnwgvee")
