//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Vehicle{
    
    var tyres = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    func drive()
    {
        // accelerate the vehicle
    }
    
    func brake()
    {
        //stop the vehicle.
    }
}

let bmw = Vehicle()
bmw.model = "328i"

let chevy = Vehicle()
chevy.model = "Mustang"
chevy.brake()

func somefunction(vehicle: Vehicle)
{
        vehicle.model = "cheese"
    
}
print(bmw.model)
somefunction(vehicle: bmw) // pass by reference
print(bmw.model)


