//
//  ConverterTests.swift
//  FirsttestTests
//
//  Created by Jian Ma on 5/3/21.
//

import XCTest
@testable import Firsttest

class ConverterTests: XCTestCase {
    var sut: Converter?
    
    override func setUp() {
        self.sut = Converter()
    }
    
    struct User{
        var name: UUID?
    }
    
    func test_Converter_converteFahrenheitToCelsius() {
        //given
        let sut = Converter()
        let user = User(name: UUID.init(uuidString: ""))
        let input = 32.0
        let input2 = 212.0
        
        //when
        let output = sut.convertToCelsius( fahrenheit: input )
        let output2 = sut.convertToCelsius( fahrenheit: input2 )
        
        //then
        XCTAssertEqual(output, 0, accuracy: 0.00001)
        XCTAssertEqual(output2, 100, accuracy: 0.00001)
    }
    
    override func tearDown() {
        sut = nil
    }

}
