//: [Previous](@previous)

import Foundation

class ABC{
    var name:String?
}
struct XYZ{
    var name:String?
}

var obj1 = ABC()
obj1.name = "Class name changed"

var struct1 = XYZ()
struct1.name = "struct name changed"

print(obj1.name!)
print(struct1.name!)
