//
//  Potato.swift
//  Milestone1
//
//  Created by Zac Cripps on 5/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//
//the struct contains all the parameters that make for the objects in "Potato"
import Foundation
struct Potato : Identifiable{
    ///A class of types whose instances hold the value of an entity with stable identity
    ///id is given to identify the objects of potatos in the array
    var id = UUID()
    ///generic name for potato
    let name:String
    ///scientific name for potato
    let scienceName:String
    ///type of family for potato
    let family:String
    ///weight of the potato
    let weight: String
    ///nutrition values of potato
    let nutrition:String
    ///image name for potato in the assets folder
    let image:String

    ///initialize the attributes of the class
    init(name:String, family:String, weight:String, scienceName:String, nutrition:String, image: String) {
        self.name = name
        self.family  = family
        self.weight = weight
        self.scienceName = scienceName
        self.nutrition = nutrition
        self.image = image
    }
}
