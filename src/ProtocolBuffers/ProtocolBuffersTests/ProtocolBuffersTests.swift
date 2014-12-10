//
//  ProtocolBuffersTests.swift
//  ProtocolBuffersTests
//
//  Created by Alexey Khokhlov on 15.09.14.
//  Copyright (c) 2014 alexeyxo. All rights reserved.
//

import Foundation
import XCTest
import ProtocolBuffers
class ProtocolBuffersTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPerformance() {
        var originalBuilder = ProtoPerfomance.builder()
        originalBuilder.ints = Int32(32)
        originalBuilder.ints64 = Int64(64)
        originalBuilder.doubles = Double(12.12)
        originalBuilder.floats = Float(123.123)
        originalBuilder.str = "string"
        let original = originalBuilder.build()
        
        self.measureBlock() {
            for _ in 0...10000 {
                let clone = ProtoPerfomance.parseFromData(original.data())
            }
        }
    }
    
    func testPerformanceJson()
        
    {
        
        var dict:NSMutableDictionary = NSMutableDictionary()
        
        dict.setObject(NSNumber(int: 32), forKey: "ints")
        
        dict.setObject(NSNumber(integer: 64), forKey: "ints64")
        
        dict.setObject(NSNumber(float: 123.123), forKey: "floats")
        
        dict.setObject(NSNumber(double: 12.12), forKey: "double")
        
        dict.setObject("string", forKey: "string")
        
//        dict.setObject([1,2,3,4], forKey: "arr")
        
        var error:NSError?
        
        var jsonobject = NSJSONSerialization.dataWithJSONObject(dict, options: NSJSONWritingOptions.PrettyPrinted, error:&error)
        
        
        
        self.measureBlock() {
            
            for _ in 0...10000 {
                
                var jsonErrorOptional:NSError?
                
                let clone2: AnyObject! = NSJSONSerialization.JSONObjectWithData(jsonobject!, options: NSJSONReadingOptions(0), error: &jsonErrorOptional)
                
            }
            
        }
        
    }
    
}
