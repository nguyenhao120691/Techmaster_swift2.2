//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = ["a","c","b","d"]
for i in 0...2{
print(i)}

var dictionlary = ["hao":"1","nham":"2"]
dictionlary ["value"] = "hai"
if let removevalue = dictionlary.removeValueForKey("hao")
{
print(dictionlary)
}


var i = 5
var r = 5

print(i+r)

func sayHelloAgain(personName: String) -> String {
    return "Hello again, " + personName + "!"
}
print(sayHelloAgain("Anna"))

func printString(words : String...){
var  result = ""
    for word in words{
    result += word
    result += " "}

print(result)
    
}

