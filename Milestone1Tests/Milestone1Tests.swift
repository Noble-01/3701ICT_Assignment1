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
    ///assign var potato to class Potato
    ///make class Potato optional
    var potato: Potato?
    
    ///create array for class Potato
    var potatos: [Potato] = []
    
    ///assign var viewModel to class ViewModel
    var viewModel: ViewModel?
    
    ///sets up the objects before they can be used by the tests
    override func setUp() {

        /// Put setup code here. This method is called before the invocation of each test method in the class.
        ///create potato array with set properties
        potato = Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato")
        
        ///unwrap object potato to be safely used by the viewModel
        guard let potato = potato else {
            return
        }
        
        ///assign var potato to an array which contains the potato objects
        potatos = [potato]
        
        ///assign viewModel to the unwrapped potato object	
        viewModel = ViewModel(potatos: potatos)
    }

    override func tearDown() {
        /// Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    ///function tests all properties and functions of the potato model
    func testPotatModel(){
        ///Assign test varaibles to assert
        ///variable to test potato name
        let potatoName = "Kipfler"
        ///variable to test potato weight
        let potatoWeight = "20grams"
        ///variable to test potato scientific name
        let potatoScienceName = "Solanum tuberosum"
        ///variable to test potato family name
        let potatoFamily = "Sweet Potato"
        ///variable to test potato image
        let potatoImage = "potato"
        
        ///XCTAssertEqual compares two non-optional values of the same type.
        ///test name of potatoare the same
        XCTAssertEqual(potato?.name,potatoName)
        ///test weight of potato are the same
        XCTAssertEqual(potato?.weight,potatoWeight)
        ///test scientific name of potato are the same
        XCTAssertEqual(potato?.scienceName,potatoScienceName)
        ///test family name of the potato are the same
        XCTAssertEqual(potato?.family,potatoFamily)
        ///test image of the potato are the same
        XCTAssertEqual(potato?.image, potatoImage)
        ///testing if array has anything inisde it
        XCTAssert((potato as Any)is Potato)
        ///testing if array is not eqault to nil
        XCTAssertNotNil([potato])
        ///testing if array has 1 object inside
        XCTAssertEqual([potato].count, 1)
        
        ///download image through function updateImage with url string
        potato?.updateImage(imageURL:"https://i.redd.it/qi0r0pdbsgs31.jpg")
        ///test returned image is of type Image using the getter function called getterImage()
         XCTAssert((potato?.getterImage() as Any)is Image)
        
        ///test if getter function works with uiImage as Nil
        XCTAssertNotNil(potato?.getterImage())
    }
    ///function test all functions that are in the ViewModel
    func testViewModel(){
        
        ///testing if ViewModel exists or contents
        XCTAssertNotNil(viewModel)
        
        ///execute addElement func which will a new object to the potato array
        viewModel?.addElement()
        ///test if the total number of objects in array is now eqaul to two
        XCTAssertEqual(viewModel?.potatos.count, 2)
        
        /**
         execute deleteItems array which deletes an object from the potato array
        pass parameter index position of object to delete from array as type int
         */
        viewModel?.deleteItems(index: 0)
        ///test if the total number of objects in array is now eqaul to one after deleting object using the deleteItems func
        XCTAssertEqual(viewModel?.potatos.count, 1)
    }
    
    
    func testPerformanceExample() {
        /// This is an example of a performance test case.
        self.measure {
            /// Put the code you want to measure the time of here.
        }
    }

}
