//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Vehicle{
    var tires = 4
    var make:  String?
    var model: String?
    var currentSpeed : Double = 0
    init(){
        print("Hakunamatatah")
    }
    
    func drive(accelerate: Double)
    {
        currentSpeed += accelerate * 2
    }
    
    func brake()
    {
        
    }
}


class SportsCar: Vehicle
{
    override init() {
        super.init()
        print("in child class")
        make = "BMW"
        model = "388i"
    }
    
    override func drive(accelerate: Double) {
        currentSpeed += accelerate * 3
        print("current speed is  \(currentSpeed)")
    }
}

let car = SportsCar()
car.drive(accelerate: 50.0)
