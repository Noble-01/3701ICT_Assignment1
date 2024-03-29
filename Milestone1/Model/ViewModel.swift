//
//  ViewModel.swift
//  Milestone1
//
//  Created by Zac Cripps on 17/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import Foundation
///@Identifiable: A class of types whose instances hold the value of an entity with stable identity.
class ViewModel: ObservableObject, Identifiable{
    
    ///placeholder variable for textfield when new object is created
    static var newElementTextPlaceHolder: String = "<new>"
    ///placeholder variable for the name text/textfield property when a new object is created
    static var newNamePlaceHolder: String = "<Name>"
    ///placeholder variable for scientific name text /textfield property when a new object is created
    static var newScientificNamePlaceHolder: String = "<Scientific Name>"
    ///placeholder varaible for Image URL textfield default value
    static var imageURLTextFieldPlaceHolder: String = "URL of Image"
    ///placeholder variable for family  label text
    static var familyPlaceHolder: String = "Family:"
    ///placeholder variable for weight  label text
    static var weightPlaceHolder: String = "Weight:"
    ///placeholder variable for nutrition  label text
    static var nutritionPlaceHolder: String = "Nutrition:"
    ///placeholder variable for notes  label text
    static var notesPlaceHolder: String = "Notes:"
    ///placeholder variable for notes textfield default value
    static var notesTextFieldPlaceHolder: String = "Add a note"
    ///placeholder variable for image URL  label text
    static var imageURLPlaceHolder: String = "Image URL:"
    ///placeholder variable for scientific name label text
    static var scientificPlaceHolder: String = "Scientific Name:"
    ///placeholder variable for list title  text
    static var listTitle: String = "Potatos"
    ///placeholder variable for default image if no image is loaded by remote URL
    static var defaultImagePlaceHolder: String = "potato"
    
    /**
    class is used to hold the array
     ##Important Notes##
    1. Using @published we can look at the new array when a change is made to it
    */
    @Published var potatos: [Potato]
    /// Initializes `self` with default strategies.
    init(potatos: [Potato]) {
        self.potatos = potatos
    }
    /**
    func creates new object using the potato model
    append new object to potato array "potatos"
    */
    func addElement(){
        ///create new instance of object with placeholder text variables and blank properties to be filled in later
        let potato = Potato(name: "\(ViewModel.newNamePlaceHolder)", family: "", weight: "", scienceName: "\(ViewModel.newScientificNamePlaceHolder)", nutrition: "", image: "\(ViewModel.defaultImagePlaceHolder)")
        potatos.append(potato)
    }
    /**
    func deletes item from potato array at index int
     - parameter index:   int to specify location of item in array to delete
    */
    func deleteItems(index: Int){
        potatos.remove(at: index)
    }
    
}


