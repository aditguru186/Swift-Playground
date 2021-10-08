//: [Previous](@previous)

import Foundation


var sortedArr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
var i = 0, j=0, length = sortedArr.count, target = 5, interval = length/4, found = false
while i<length && j<length{
    j = i + interval
    if j < length{
        if sortedArr[j] == target{
            print(j)
            found = true
            break
        }
        if (sortedArr[j] > target){
            break
        }
        else{
            continue
        }
    }
}

for var index in i...j{
    if sortedArr[index] ==  target{
        print(index)
        found = true
        break
    }
}
if !found{
    print("-1")
}


//: [Next](@next)
