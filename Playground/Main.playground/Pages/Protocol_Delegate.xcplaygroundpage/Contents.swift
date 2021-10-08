//: [Previous](@previous)

import Foundation


//: [Next](@next)

protocol RandomNumberGenerator{
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}

class Dice{
    let sides:Int
    let generator:RandomNumberGenerator
    init(sides: Int , generator: RandomNumberGenerator){
        self.sides = sides
        self.generator = generator
    }
    func roll()->Int{
        return Int(generator.random() * Double(sides))+1
    }
}

protocol DiceGame{
    var dice:Dice{get}
    func play()
}

var dice6 = Dice(sides:6,generator:LinearCongruentialGenerator())
for _ in 1...20{
    print("Random dice roll : \(dice6.roll())")
}




