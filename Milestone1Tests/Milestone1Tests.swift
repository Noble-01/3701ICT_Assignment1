//
//  Project1Tests.swift
//  Project1Tests
//
//  Created by Zac Cripps on 2/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import XCTest
@testable import Milestone1

class Project1Tests: XCTestCase {
     var potato: Potato?
    override func setUp() {

        // Put setup code here. This method is called before the invocation of each test method in the class.
        potato = Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
//functions used to test the struct and the values that are given to the variables disbaled on screen

    //the struct test is broken down into individual test functions for each element on the phone
    func testPotatoName(){
        let potatoName = "Kipfler"

        XCTAssert(potato?.name == potatoName)
    }
    func testPotatoWeight(){
        let potatoWeight = "20grams"

        XCTAssert(potato?.weight == potatoWeight)
    }
    func testPotatoScienceName(){
        let potatoScienceName = "Solanum tuberosum"

        XCTAssertEqual(potato?.scienceName,potatoScienceName)
    }
    func testPotatoNutrition(){
        let potatoNutrition = "manganese, potassium and vitamin C"

        XCTAssertEqual(potato?.nutrition,potatoNutrition)
    }
    func testFamily(){
        let potatoFamily = "Sweet Potato"

        XCTAssertEqual(potato?.family,potatoFamily)
    }

    func testArray(){
        ///created array for potato class
        let potato: [Potato] = [Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato")]
        ///testing if array has anything inisde it
        XCTAssert((potato as Any)is [Potato])
        ///testing if array is not eqault to nil
        XCTAssertNotNil([potato])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
