//: Playground - noun: a place where people can play

import UIKit

enum Cars{
    case laborgini      // can also be given with comma
    case masserati
    case honda
    case skoda
}

let varEnumeration: Cars = .laborgini


enum Barcode{
    
    case upc(Int, Int, Int, Int)
    case qrcode(String)
    
}

var productBarCode = Barcode.upc(8, 85909, 51226, 3)
print(productBarCode)
productBarCode = .qrcode("fadfadvdsvdavds")
switch productBarCode{
case let .upc(numbersystem, manufacturer, product,check):
        print("UPC: \(numbersystem), \(manufacturer), \(product), \(check)")
    
case let .qrcode(productCode):
        print("QRCOde \(productCode)")
}







enum JediMasters: String {    // we are explicitely defining it as string so we can assign and pull up an actual value
    case yoda = "Yoda"
    case swindi = "Swindi"
    case gin = "Gin"
    case obionekanobi = "Obionekanobi"
    case luke = "Luke"
    
}

print(JediMasters.yoda.rawValue)



enum SwitchStatus{
    case switchOn
    case switchOff
}

var switchStatus: SwitchStatus = .switchOff

func flipSwitch(status: SwitchStatus) -> SwitchStatus{
    
    if status == .switchOff{
        return .switchOn
    }
    else{
        return .switchOff
    }
    
}

flipSwitch(status: switchStatus)

switchStatus = .switchOn

flipSwitch(status: switchStatus)


































