import UIKit

class MyClass{}
extension MyClass{
    // functionalities to extend functions to MyClass
}



extension String{
    func reverse() -> String {
        var characterArray = [Character]()
        for character in self.characters{
            characterArray.insert(character, at: 0)
         }
        print("voila")
        return String(characterArray)
     }
}

var name = "MalayalaM"
name.reverse()




// Mutating function
extension Double{
    mutating func area(){
        let pi = 3.14
        self = pi*(self * self)
    }
}

class Circle{
    var radius: Double
    
    init(radius: Double)
    {
        self.radius = radius
    }
}

var circle = Circle(radius: 3.3)
print(circle.radius)
circle.radius.area()
print(circle.radius)  // by using the mutating extension we changed the value of original variable.

