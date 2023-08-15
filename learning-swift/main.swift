//
//  main.swift
//  factorial
//
//  Created by Kyle Rodgers on 8/14/23.
//

import Foundation

func factorial(number: Int64) -> Int64 {
    if number < 0 {
        return -1;
    }
    if number == 0 {
        return 1;
    } else {
        let result = number.multipliedReportingOverflow(by: factorial(number: number - 1));
        if !result.overflow {
            return result.partialValue
        } else {
            return -2;
        }
    }
}

print("Enter a number: ", terminator: "");
if let input = readLine() {
    if let number = Int64(input) {
        print("You entered: \(number)");
        let result = factorial(number: number);
        switch result {
        case -1: print("Negative factorials are undefined.")
        case -2: print("The factorial of \(number) is too large to calculate.")
        default: print("Its factorial is: \(result)")
        }
    }
}
