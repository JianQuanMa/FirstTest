//
//  FirsttestTests.swift
//  FirsttestTests
//
//  Created by Jian Ma on 4/28/21.
//

import XCTest
@testable import Firsttest

class FirsttestTests: XCTestCase {
    var i = 1
    
    override func setUp() {
       print("i am the set up")
    }
    
    func testHaterStartsNicely(){
        let hater = Hater()
        XCTAssertFalse(hater.hating)
    }
    
    func testHaterHatesAfterBadDay(){
        var hater = Hater()
        
        hater.badday()
        
        XCTAssertTrue(hater.hating)
    }
    
    func testHaterHatesAfterGoodDay(){
        var hater = Hater()
        
        hater.goodDay()
        
        XCTAssertFalse(hater.hating)
    }
    
    override func tearDown() {
        i += 1
        print("i am tear down ")
    }

}
