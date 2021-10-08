//: [Previous](@previous)

import Foundation

var str = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"

//var str1 = "abcdcba"
//print(String(str1.reversed()))
print(findLongestPalindrome(str))

func findLongestPalindrome(_ s: String) -> String {
    let strArr:[Character] = Array(s)
    var longestPalindrome = "\(strArr[0])"
    if checkForPalindrome(s) {
        return s
    }
    else if s.count == 2{
        if checkForPalindrome(s) {
            return s
        }
        return longestPalindrome
    }
    var charDict:[Character:[Int]] = [:]
    var longestPalindromeLength:Int = 0
    var index:Int = 0
    for var i in s{
        if var arr = charDict[i] {
            arr.append(index)
            charDict[i] = arr
        }
        else{
            let arr:[Int] = [index]
            charDict[i] = arr
        }
        index += 1
    }
//    print(charDict)
    index = 0
    for var c in s{
        let arr:[Int] = charDict[c]!
//        print(arr)
        if arr.count > 1 {
            let lengthFreq = arr.count
            var i = 0, j = 1
            while(i<lengthFreq){
                j = i+1
                while j<lengthFreq {
                    var startIndex = arr[i], endIndex = arr[j]
                    let subStr = getSubstring(s,startIndex,endIndex)
                    if (checkForPalindrome(subStr)){
                        if(subStr.count > longestPalindromeLength){
                            longestPalindromeLength = subStr.count
                            longestPalindrome = subStr
                        }
                    }
                    j += 1
                }
                i+=1
            }
        }
    }
    
    return longestPalindrome
}
func getSubstring(_ s:String,_ startIndex:Int,_ endIndex:Int) -> String{
    var subStr:String = ""
    let charArr = Array(s)
    for var i in startIndex...endIndex{
        subStr += "\(charArr[i])"
    }
    return subStr
}
func checkForPalindrome(_ s:String) ->Bool{
    if (s == String(s.reversed())) {
        return true
    }
    return false
}
//: [Next](@next)
