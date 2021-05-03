//
//  Math.swift
//  Firsttest
//
//  Created by Jian Ma on 5/3/21.
//

import Foundation


class Math {
    func divisionRemainder(of dividend: Int, dividedBy divider: Int) -> (quotient: Int, remainder: Int){
        let quotient = dividend / divider
        let remainder = dividend % divider
        return (quotient, remainder)
    }
}
