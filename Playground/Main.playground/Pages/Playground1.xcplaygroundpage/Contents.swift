//: [Previous](@previous)

import Foundation

var arr:[Int] = [1,2,2,3,4,5,6]

//arr = arr.sorted()
var target:Int = 11
print(maxSubArraySum(arr,target))

func maxSubArraySum(_ arr:[Int],_ target:Int)->[Int]{
    var firstIndex:Int = 0,index:Int = 0, sum:Int = 0
    var finalArr:[Int] = []
    
    while(index < arr.count){
        sum += arr[index]
        finalArr.append(arr[index])
        if(sum >= target){
            sum -= arr[firstIndex]
            firstIndex += 1
            finalArr.removeFirst()
        }
        if(sum == target){
            return finalArr
        }
        index += 1
    }
    while(firstIndex < arr.count){
        if(sum == target){
            return finalArr
        }
        else{
            sum -= arr[firstIndex]
            finalArr.removeFirst()
            firstIndex+=1
        }
    }
    return [-1]
}
