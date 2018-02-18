import UIKit

protocol Number{
    var floatValue: Float{ get }
}

extension Float: Number{
    var floatValue: Float{
        return self
    }
}

extension Double: Number{
    var floatValue: Float{
        return Float(self)
    }
}

extension Int: Number{
    var floatValue: Float{
        return Float(self)
    }
}


extension UInt: Number{
    var floatValue: Float{
        return Float(self)
    }
}

func +(valA: Number, valB: Number) -> Float
{
    return valA.floatValue + valB.floatValue
}

func -(valA: Number, valB: Number) -> Float
{
    return valA.floatValue - valB.floatValue
}

func *(valA: Number, valB: Number) -> Float
{
    return valA.floatValue * valB.floatValue
}

func /(valA: Number, valB: Number) -> Float
{
    return valA.floatValue / valB.floatValue
}
var jack: Float = 4
jack.floatValue


var three: Double = 3
var four: Float = 4
three.floatValue + four

var x: Double = 5.00
var y: Int = 6
let q = x / y
let z  = x + y


class Question{
    var type: QuestionType
    var query: String
    var ans : String
    
    init(type: QuestionType, query: String, ans: String){
        self.type = type
        self.query = query
        self.ans = ans
    }
}


enum QuestionType: String {
    case trueFalse = "The sky is blue"
    case multipleChoice = "Who is the uglist actor: you, me , they, where?"
    case shortAnswer = "what is the capital of India"
    case essay = "In 50 words, explain cow?"
    
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
    
}

enum AnsType: String{
    case trueFalse = "True"
    case multipleChoice = "you"
    case shortAnswer = "Delhi"
    case essay = "cow is a holy animal and it eats grass"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator{
    func generateRandomQues() -> Question
}

class Quiz: QuestionGenerator{
    func generateRandomQues() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAns = AnsType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, ans: randomAns)
        return randomQuestion
        
    }
}




let quiz = Quiz()
let question = quiz.generateRandomQues()
print("Question Type:  \(question.type) \n Query: \(question.query)\n Answer: \(question.ans)")




























