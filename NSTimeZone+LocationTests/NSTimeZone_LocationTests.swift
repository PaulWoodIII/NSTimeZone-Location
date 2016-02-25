//
//  NSTimeZone_LocationTests.swift
//  NSTimeZone+LocationTests
//
//  Created by Paul Wood on 2/24/16.
//  Copyright © 2016 Paul Wood. All rights reserved.
//

import XCTest
@testable import NSTimeZone_Location
import CoreLocation

class NSTimeZone_LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNewYork() {
        let tz = NSTimeZone.closestTimeZoneWithLocation(CLLocation(latitude: 40.7127,
            longitude: -74.0059))
        print(tz)
        XCTAssertEqual(NSTimeZone(abbreviation: "EST"), tz)
    }
    
    func testNewYorkWithCountryCode() {
        let tz = NSTimeZone.closestTimeZoneWithLocation(CLLocation(latitude: 40.7127,
            longitude: -74.0059), countryCode:countryCode)
        print(tz)
        XCTAssertEqual(NSTimeZone(abbreviation: "EST"), tz)
    }
    
}
