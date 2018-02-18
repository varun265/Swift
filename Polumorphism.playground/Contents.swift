//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Shape{
    var area: Double?
    func createArea(valA: Double, valB: Double)
    {
        
    }
}

class Rectangle: Shape{
    
    override func createArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}
class Triangle: Shape{
    
    override func createArea(valA: Double, valB: Double) {
        area  = (valA*valB)/2
    }
}
class Square: Shape {
    override func createArea(valA: Double, valB: Double) {
        area = valA*valB
    }
}
