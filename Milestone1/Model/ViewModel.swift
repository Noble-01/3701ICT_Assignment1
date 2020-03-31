//
//  ViewModel.swift
//  Milestone1
//
//  Created by Zac Cripps on 17/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import Foundation

class ViewModel: ObservableObject, Identifiable{
    ///navigation title link
    let listTitle: String
    static var URLPlaceHolder: String = "URL of Image"
    ///class is used to hold the array
    ///by using @published we can look at the new array when a change is made to it
    @Published var potatos: [Potato]
    
    init(potatos: [Potato], listTitle: String) {
        self.potatos = potatos
        self.listTitle = "Potatos"
    }
    func addElement(){
        let potato = Potato(name: "<new>", family: "", weight: "", scienceName: "", nutrition: "", image: "")
        potatos.append(potato)
    }
    func deleteItems(index: Int){
        potatos.remove(at: index)
    }
    
}


