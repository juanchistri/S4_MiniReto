//: Playground - noun: a place where people can play

import UIKit

let num = 0...100

for n in num{
    switch n{
    case 30...40:
        print("\(n) Viva Swift!!!")
    case let n where n%5 == 0 :
        print("\(n) Bingo!!!")
    case let n where n%2 == 0 :
        print("\(n) par!!!")
    case let n where n%2 != 0 :
        print("\(n) impar")
    default:
            print(n)
    }
    
}