import UIKit

var optionImage: UIImage? = #imageLiteral(resourceName: "nil.png")// ? says it can have a value or not
let nonoptionImage: UIImage = #imageLiteral(resourceName: "5.png")

var optionalNumber: Int? = 5
var number:Int = 5

//Force unwrapping
if optionalNumber != nil{
    print("optional number is a value of  \(optionalNumber)")
}

//Optional Binding
if let constantnumber = optionalNumber{
    print("Constant number has a value of \(constantnumber)")
}else{
    print("optional number is nil")
}


func intPrinter(){
    guard let constantnumber = optionalNumber else{return}
    print("contactnumber value is \(constantnumber)")
    
}
intPrinter()

//implicitly unwrapped optionals
let assumedValues: Int! = 5 //! is used to implicitly unwrap a value. do not do it if you are not sure whether ther is a value for sure.. if nil it will generate a fatal error.
let implicitvalue: Int = assumedValues

//Nil coalasing and  using  ternary operator
let optionalInt: Int? = nil
let result  = optionalInt ?? 0 // meaning if we dont get a value of optionalInt set it zero


//optional chaining.

class ComiconAttendee{
    var admissionBadge :AdmissionBadge?
    
    init(badge : AdmissionBadge?){
        self.admissionBadge = badge
    }
    
}

class AdmissionBadge
{
    var numberofDays: Int
    
    init(numberofDays: Int){
        self.numberofDays = numberofDays
    }
}

let admissionBadge = AdmissionBadge(numberofDays: 3)
let attendeee = ComiconAttendee(badge: admissionBadge)//ComiconAttendee(badge: nil)

if let daysAttendable = attendeee.admissionBadge?.numberofDays{
    print("this attendee can enter comicon \(daysAttendable)")
    
}else{
    print("this person has not purchased a ticket.")
}






































