import UIKit

func checkForTargetNum(arr:Array<Int>,target:Int) -> Array<Int>{
    var index1:Int,index2:Int
    index1 = 0
    var flag = false
    var outputArr:Array<Int>
    outputArr = [-1,-1]
    for i in arr {
        index2 = 0
        for j in arr{
            let sum:Int = i+j
            if sum == target{
                outputArr[0] = index1
                outputArr[1] = index2
                flag = true
                break
            }
            index2+=1
        }
        if flag{
            break
        }
        index1+=1
    }
    return outputArr
}

var arr:Array<Int> = [2,7,11,15]
var target:Int = 9

var outputArr1:Array<Int> = checkForTargetNum(arr: arr, target: target)
print(String(outputArr1[0])+" , "+String(outputArr1[1]))



