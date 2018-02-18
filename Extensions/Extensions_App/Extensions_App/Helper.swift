import UIKit

func generateRandomNumber(quantity: Int) -> [CGFloat]{
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity{      // underscore is used as to know that we dont use the value but it                                                                     should go from 1 to quantity specified
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}

let broke = balance <= 0 ? true : false
