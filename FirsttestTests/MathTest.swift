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
        verifyDivision(result, expectedQuotient: 3, expectedRemainder: 1)
    }
    
    func verifyDivision(_ result: (quotient: Int, remainder: Int), expectedQuotient: Int, expectedRemainder: Int, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(result.quotient, expectedQuotient, file: file, line: line)
        XCTAssertEqual(result.remainder, expectedRemainder, file: file, line: line)
    }
    
    struct Game {
        let name: String
        
        func play() throws {
            print("-_- I am a person")
            if self.name == "bioBlitz" {
                throw GameError.notPurchased
            } else if name == "Blastazap" {
                throw GameError.notInstalled
            } else if name == "Dead storm Rising" {
                throw GameError.parentalControllsDisallowed
            } else {
                print("\(name) is ok to play!")
            }
        }
    }
    // there ways to handle errors
    // 1: the classic do try catch combo
    func test_Game_playingBioBlitzThrows() {
        let game = Game(name: "bioBlitz")
        do {
            try game.play()
            XCTFail("bioBlitz had not been purchased yet.")
        } catch{}
    }
    
    func test_Game_playingBioBlitzThrows2() {
        let game = Game(name: "bioBlitz")
        do {
            try game.play()
            XCTFail("bioBlitz had not been purchased yet.")
        } catch GameError.notPurchased {
            //success
        } catch {
            XCTFail()
        }
    }
    // the assert throws
    func test_Game_playBlastazapThrows() {
        let game = Game(name: "Blastazap")
        XCTAssertThrowsError(try game.play()) { error in
            XCTAssertEqual(error as? GameError, GameError.notInstalled)
            
        }
    }
    // the throwing test function
    func test_playingDeadStormRisingThrows() throws {
        let game = Game(name: "Dead storm Rising")
        try game.play()
    }
}

enum GameError: Error, LocalizedError {
    case notPurchased
    case notInstalled
    case parentalControllsDisallowed
}



class ThrowErrors: XCTestCase {
    
}

extension LocalizedError {
//    var descrpitionalMessage: String {
//        return "\(self)"
//    }
}
