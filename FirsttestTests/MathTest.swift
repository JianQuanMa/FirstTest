//
//  MathTest.swift
//  FirsttestTests
//
//  Created by Jian Ma on 5/3/21.
//

import XCTest
@testable import Firsttest

class MathTest: XCTestCase {

    func test_Math_divide1By3_shouldReturn10() {
        
        // given
        let sut = Math()
        let dividend = 10
        let divider = 3
        
        // when
        let result = sut.divisionRemainder(of: dividend, dividedBy: divider)
        
        // then
        verifyDivision(result, expectedQuotient: 3, expectedRemainder: 2)
    }
    
    func verifyDivision(_ result: (quotient: Int, remainder: Int), expectedQuotient: Int, expectedRemainder: Int, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(result.quotient, expectedQuotient, file: file, line: line)
        XCTAssertEqual(result.remainder, expectedRemainder, file: file, line: line)
    }

}
