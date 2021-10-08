import UIKit

var text = "Helloasdfgaaaaplayground"
print (text)
var charArr = Array(text)
var count = charArr.count
var dict1: [String:Int]?
var highestOccurence = -1
for x in charArr {
    var value = 0
    if (value = (dict1![String(x)])!) == nil{
//        if value == nil {
            dict1![String(x)] = 1;
//        }
    }
    else{
        value+=1
        dict1![String(x)] = value;
        if highestOccurence > value {
            highestOccurence = value
        }
        print(highestOccurence)
    }
}
for x in charArr{
    let value = dict1![String(x)]
    if value == highestOccurence {
        print(x)
    }
}



var dict: [String:Int] = [
    "One" : 1,
    "Two" : 2,
    "Three": 3,
                        ]
if let temp1 = dict["Two"]{
    print (temp1)
}

//dict1 ["Hi"] = 4
//print(dict1["Hi"])

var databaseLoginHashMap: [String : String]?
databaseLoginHashMap = [
    "aditguru":"password@123",
    "beckham":"benditlikebeckham@123",
    "asd":"asd"
    ];
if let temp2 = databaseLoginHashMap!["asd"]{
    print(temp2)
}
databaseLoginHashMap!["Hi"] = "123"
if let temp2 = databaseLoginHashMap!["Hi"]{
    print(temp2)
}
let str1 = "qwe"
let str2 = "qwerty"
databaseLoginHashMap![str1] = str2
if let temp2 = databaseLoginHashMap![str1]{
    print(temp2)
}

let str3 = "ghj"
let str4 = "ghjkl"
databaseLoginHashMap = [str3:str4]
if let temp2 = databaseLoginHashMap![str3]{
    print(temp2)
}


