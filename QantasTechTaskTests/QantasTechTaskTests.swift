//
//  QantasTechTaskTests.swift
//  QantasTechTaskTests
//
//  Created by Clayton on 8/6/21.
//

import XCTest
@testable import QantasTechTask

class QantasTechTaskTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testDecoder() throws {
        /*
         This test case is to test the decoding of the web service payload, where the example data is found in the file "TestData.json".
         */
        
        let jsonData =  Util.readJSON(fileName: "TestData")
        
        if let data = jsonData, let utf8Text = String(data: data, encoding: .utf8) {
            print("Test data: \(utf8Text)")
        }

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        let airportsDetail = try? decoder.decode(Airports.self, from: jsonData!)

        let airport = airportsDetail?[0]
        
        XCTAssertTrue(airport?.airportCode == "AAA")
            
    }


}
