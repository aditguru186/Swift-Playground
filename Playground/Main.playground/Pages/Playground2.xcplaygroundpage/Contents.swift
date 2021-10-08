//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

var arr:[Int] = [10, 5, -1, 1, 2, 7, 1, 9]
var target:Int = 17
print(maxSubArraySum(arr,target))

func maxSubArraySum(_ arr:[Int],_ target:Int)->Int{
    var sum:Int  = 0, count:Int = 0, finalCount:Int = 0
    for var i in 0..<arr.count{
        count = 0
        sum = 0
        for var j in i..<arr.count{
            sum += arr[j]
            count += 1
            if(sum == target){
                finalCount = (finalCount > count) ? finalCount : count
            }
        }
    }
    
    return (finalCount == 0) ? -1 : finalCount
}
