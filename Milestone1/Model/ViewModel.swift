//
//  ViewModel.swift
//  Milestone1
//
//  Created by Zac Cripps on 17/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import Foundation

class ViewModel: ObservableObject, Identifiable{
    let listTitle: String
    ///class is used to hold the array
    ///by using @published we can look at the new array when a change is made to it
    @Published var potatos: [Potato]
    
    init(potatos: [Potato], listTitle: String) {
        self.potatos = potatos
        self.listTitle = "Potatos"
    }
}
