/** [Previous](@previous)
 You are given an m x n matrix M initialized with all 0's and an array of operations ops, where ops[i] = [ai, bi] means M[x][y] should be incremented by one for all 0 <= x < ai and 0 <= y < bi.

 Count and return the number of maximum integers in the matrix after performing all the operations.
*/
import Foundation
//var ops = [[2,2],[3,3],[3,3],[3,3],[2,2],[3,3],[3,3],[3,3],[2,2],[3,3],[3,3],[3,3]]
//var ops = []
//print(maxCount(3,3,[[2,2],[3,3]]))
//print(maxCount(3,3,ops))
print(maxCount(2,2,[[1,1]]))

func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int{
    if ops.count == 0 {
        return m*n
    }
    var highestCount = 0
    var freequencyDict:[Int:Int]=[:]
    var initArr = [[Int]]()
    for var i in 0...m{
        var tempArr:[Int] = Array(repeating:0, count:n)
        initArr.append(tempArr)
    }
    //brute force approach
    for var i in ops {
        var x = i[0],y = i[1]
        for var j in 0...x-1{
            for var k in 0...y-1{
                initArr[j][k] += 1
            }
        }
    }
    print(initArr)
    //compute highest count
    for var i in initArr{
        for var j in i{
            print(freequencyDict)
            if let freq = freequencyDict[j]{
                freequencyDict[j] = freq+1
                if(freq>highestCount){
                    highestCount = freq
                }
            }
            else{
                freequencyDict[j] = 1
                highestCount = highestCount>1 ? highestCount:1
            }
        }
    }
    return highestCount
}
