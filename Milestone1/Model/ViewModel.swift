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
    ///navigation title link
    let listTitle: String
    
    static var newElementTextPlaceHolder = "<new>"
    static var URLPlaceHolder: String = "URL of Image"
    static var familyPlaceHolder: String = "Family"
    ///class is used to hold the array
    ///by using @published we can look at the new array when a change is made to it
    @Published var potatos: [Potato]
    /// Initializes `self` with default strategies.
    init(potatos: [Potato], listTitle: String) {
        self.potatos = potatos
        self.listTitle = "Potatos"
    }
    ///func creates new object using the potato model
    ///-output: append new object to potato array "potatos"
    func addElement(){
        let potato = Potato(name: "\(ViewModel.newElementTextPlaceHolder)", family: "", weight: "", scienceName: "", nutrition: "", image: "")
        potatos.append(potato)
    }
    ///func deletes item from potato array at index int
    ///-Parameters:
    ///-one:  int to specify location of item in array delete from
    func deleteItems(index: Int){
        potatos.remove(at: index)
    }
    
}


