//
//  Project1Tests.swift
//  Project1Tests
//
//  Created by Zac Cripps on 2/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import XCTest
import SwiftUI
@testable import Milestone1

class Project1Tests: XCTestCase {
    var potato: Potato?
    
    var potatos: [Potato] = []
    
    var viewModel: ViewModel?
    
    override func setUp() {

        /// Put setup code here. This method is called before the invocation of each test method in the class.
        ///create potato array with set properties
        potato = Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato")
        
        guard let potato = potato else {
            return
        }
        
        potatos = [potato]
        
        viewModel = ViewModel(potatos: potatos)
    }

    override func tearDown() {
        /// Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    ///function test all properties of potato model
    func testPotatModel(){
        ///Assign test varaibles to assert 
        let potatoName = "Kipfler"
        let potatoWeight = "20grams"
        let potatoScienceName = "Solanum tuberosum"
        let potatoFamily = "Sweet Potato"
        
        ///XCTAssertEqual compares two non-optional values of the same type.
        ///test name of potato
        XCTAssertEqual(potato?.name,potatoName)
        ///test weight of potato
        XCTAssertEqual(potato?.weight,potatoWeight)
        ///test scientific name of potato
        XCTAssertEqual(potato?.scienceName,potatoScienceName)
        ///test family name of the potato
        XCTAssertEqual(potato?.family,potatoFamily)
        ///testing if array has anything inisde it
        XCTAssert((potato as Any)is Potato)
        ///testing if array is not eqault to nil
        XCTAssertNotNil([potato])
        ///testing if array has 1 object inside
        XCTAssertEqual([potato].count, 1)
        
        potato?.updateImage(imageURL:"https://i.redd.it/qi0r0pdbsgs31.jpg")
         XCTAssert((potato?.getterImage() as Any)is Image)
        
        
    }
    func testViewModel(){
        viewModel?.addElement()
        XCTAssertEqual(viewModel?.potatos.count, 2)
        
        viewModel?.deleteItems(index: 0)
        XCTAssertEqual(viewModel?.potatos.count, 1)
    }
    
    
    func testPerformanceExample() {
        /// This is an example of a performance test case.
        self.measure {
            /// Put the code you want to measure the time of here.
        }
    }

}
