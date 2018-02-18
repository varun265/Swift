//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var emp: [Double] = [1000,10000,3242,34534,34522]
var i = 0

repeat{
    
    emp[i] = emp[i] + (emp[i] * 0.10)
    print(i)
    i = i+1;
}while(i < emp.count)
print(emp)

for i in 0..<emp.count{
    emp[i] = emp[i] + (emp[i] * 0.10)
    
}
print(emp)

for sal in emp{
    print("Salary: \(sal)")
}
