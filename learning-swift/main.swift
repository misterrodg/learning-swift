//
//  main.swift
//  factorial
//
//  Created by Kyle Rodgers on 8/14/23.
//

import Foundation

func factorial(number: Int) -> Int {
    if number < 0 {
        return -1;
    }
    if number == 0 {
        return 1;
    } else {
        return number * factorial(number: number - 1)
    }
}

print("Enter a number: ", terminator: "")
if let input = readLine() {
    if let number = Int(input) {
        let result = factorial(number: number)
        print("You entered: \(number)")
        if result == -1 {
            print("Negative factorials are undefined.")
        } else {
            print("Its factorial is: \(result)")
        }
    }
}
