let numb = [5,4,3,1,-31,2]
//let sortNum = numb.sorted()
//print(sortNum)

let sortedNumbers = numb.sorted(by: {
    (num1:Int,num2:Int) ->Bool in
    return true
})

let sortNumbs = numb.sorted(by: >)
print(sortNumbs)

let mappedNum = numb.map{$0 * 2}
print(mappedNum)

var stringNumArr = numb.map{ String($0) }
print(stringNumArr)

stringNumArr.append("One")
print(stringNumArr)

let numbArrConvertedFromStringArr:[Int] = stringNumArr.map{Int($0) ?? 1}
print (numbArrConvertedFromStringArr)


