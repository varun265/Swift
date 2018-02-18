//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var nameofInteger = [Int: String]()
nameofInteger[4] = "varun"
nameofInteger[2] = ""
nameofInteger[5] = "varma"

print(nameofInteger as Any)
nameofInteger = [:]// to clear all keys for variable nameofInteger

var airports: [String: String] = ["YYZ": "toronto Pearson","DEL": "Delhi", "NYC": "New York"]
print("the airport dictionary has  \(airports.count) items")
for( airportcode, airportname) in airports
{
    print("\(airportcode) : \(airportname)")
    
}

for( airportcode) in airports.keys
{
    print("\(airportcode)")
    
}


var Abilities = [String : [String: String  ]]()
Abilities["abd"] = ["xyz": "delhi", "slot": "3", "ability":"name","url": "http://pokeapi.co/api/v2/ability/34/"]


print(Abilities)
