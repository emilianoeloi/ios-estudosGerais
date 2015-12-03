//: Playground - noun: a place where people can play

import UIKit

var str = "Vai Sabrina"
var number = 997
var floatNumber = 1.0
var matrix = [1,2,3,4,5]
var dicionario = ["key":"value"]
var menu = ["pizza": 20.00, "soda": 3.55]
var minimalAge = 21
var currentAge = 8
var name = "Gabriela"
var mom = "Rhyana"
var momHumor = "bom"

var isPrime = true

if number > 2{
    for (var i = 2; i < number; i++){
        if (number % i == 0){
            isPrime = false;
        }
    }
}
print(" The number \(number) is prime: \(isPrime)")

if currentAge >= minimalAge || (mom == "Rhyana" && momHumor == "bom")  {
    print("Hi \(name) You can play")
}else{
    print("Sorry, \(name) You are too young")
}

for (index, value) in matrix.enumerate(){
    print("Matrix index: \(index) and value \(value)")
}

// Log
print("String \(str)")
print("Integer \(number)")
print("Float Number \(floatNumber)")
print("First position of the matrix \(matrix[0])")
print("Value of key key \(dicionario["key"]!)")
print("Price of Pizza \(menu["pizza"]!)")

