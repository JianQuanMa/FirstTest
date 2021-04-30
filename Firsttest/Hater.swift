//
//  Hater.swift
//  Firsttest
//
//  Created by Jian Ma on 4/28/21.
//

import Foundation

struct Hater {
    
    var hating = false
    
    mutating func badday() {
        
        hating = true
        
    }
    
    mutating func goodDay() {
        
        hating = false
        
    }
    
}
