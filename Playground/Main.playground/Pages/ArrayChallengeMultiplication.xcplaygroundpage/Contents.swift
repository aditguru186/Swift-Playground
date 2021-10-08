//: [Previous](@previous)

import Foundation

func ArrayChallenge(_ num: Int) -> Int {

  // code goes here
  // Note: feel free to modify the return type of this function
  var arr:[Int] = createArray(num)
  var finalCount:Int = 1000
  for var n in arr{
    finalCount = evaluate(arr,arr , n, finalCount, 0)
  }
  return finalCount

}

func evaluate(_ finalArr:[Int],_ tempArr:[Int],_ n:Int,_ finalCount:Int,_ tempCount:Int) -> Int{
  tempCount+=1
  var num:Int = 0
  for var i in tempArr{
    num = num*10+i
  }
  var numTempMult:Int = num * n
  var numTempArr:[Int] = createArray(numTempMult)
  for var i in numTempArr{
    finalArr.append(i)
  }
  if(checkAdjacentInt(finalArr)){
    if(tempCount<finalCount){
      finalCount = tempCount
      return finalCount
    }
  }
  for var i in numTempArr{
    evaluate(finalCount,numTempArr ,i ,finalCount ,tempCount )
  }
  return finalCount
}
func createArray(_ num:Int) -> [Int]{
  var charArr:[Character] = Array(String(num))
  var numArr:[Int] = [Int](repeating: 0, count: (charArr.count))
  var index = 0
  for var c in charArr{
    numArr[index] = String(c).toInt()
    index += 1
  }
  return numArr
}
func checkAdjacentInt(_ arr:[Int]) -> Bool{
  var length = arr.count
  for var i in 0...length-2{
    if(arr[i] == arr[i+1]){
      return true
    }
  }
  return false
}
// keep this function call here
print(ArrayChallenge(readLine(stripNewline: true)));
