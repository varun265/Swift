//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func calculate_area(legth: inout Int, width: Int)-> Int
{
    legth = legth - width
    let area =  legth*width;
    print(area)
    return area
}
var l1 = 5;
var w1 = 4

var newArea = calculate_area(legth: &l1, width: w1)
// you need to put & for value passed using inout as the variable needs to be mutable.
