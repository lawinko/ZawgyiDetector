//
//  zawgyidetectorTests.swift
//  zawgyidetectorTests
//
//  Created by La Win Ko on 10/6/20.
//  Copyright © 2020 La Win Ko. All rights reserved.
//

import XCTest
@testable import zawgyidetector

class zawgyidetectorTests: XCTestCase {

    var detector: ZawgyiDetector = ZawgyiDetector.shared
    
    override class func setUp() {
        super.setUp()
    }
        
    func testIgnoreNonMyanmarCodePoints() throws{
        let allAscii: String = "blah blah blah blah blah"
        let mixedUnicode: String = "<span>blah blah ဒဂုန်ဦးစန်းငွေ </span> blah blah blah blah"
        let mixedZawgyi: String = "blah blah blah blah blah သို႔သြားပါ။ blah blah blah"
        XCTAssertEqual(detector.predict(input: allAscii), -1 * Double.infinity)
        XCTAssertLessThan(detector.predict(input: mixedUnicode), 0.01)
        XCTAssertGreaterThan(detector.predict(input: mixedZawgyi), 0.99)
    }
        
    func testStrongUnicodeReturnsLowScore() throws{
        let strongUnicode: String = "အပြည်ပြည်ဆိုင်ရာ လူ့အခွင့်အရေး ကြေညာစာတမ်း"
        XCTAssertLessThan(detector.predict(input: strongUnicode), 0.01)
    }
    
    func testStrongZawgyiReturnsHighScore() throws{
        let strongZawgyi: String = "အျပည္ျပည္ဆိုင္ရာ လူ႔အခြင့္အေရး ေၾကညာစာတမ္း"
        XCTAssertGreaterThan(detector.predict(input: strongZawgyi), 0.999)
    }

    func testIgnoreNumerals() throws{
        XCTAssertEqual(detector.predict(input: "၉၆.၀ kHz"), -1 * Double.infinity)
        XCTAssertEqual(detector.predict(input: "၂၄၀၉ ဒဂုန်"), detector.predict(input: "ဒဂုန်"))
    }
        
    func testCompatibility() throws{
        do{
            let data = try Data(contentsOf: Bundle(for: zawgyidetectorTests.self).url(forResource: "compatibility", withExtension: "tsv")!)
            let string = String(data: data, encoding: .utf8)
            let nextLineSplit = string!.components(separatedBy: "\n")
            for nextLine in nextLineSplit{
                let split = nextLine.components(separatedBy: "\t")
                if split.count ==  2{
                    XCTAssertEqual(detector.predict(input: split[1]), Double(split[0]))
                }
            }
        }catch (_){
            throw NSError(domain: "File not found", code: NSFileNoSuchFileError, userInfo: nil)
        }
    }
        
    static var allTests = [
        ("testIgnoreNonMyanmarCodePoints", testIgnoreNonMyanmarCodePoints),
        ("testStrongUnicodeReturnsLowScore", testStrongUnicodeReturnsLowScore),
        ("testStrongZawgyiReturnsHighScore", testStrongZawgyiReturnsHighScore),
        ("testIgnoreNumerals", testIgnoreNumerals),
        ("testCompatibility", testCompatibility),
    ]
}
