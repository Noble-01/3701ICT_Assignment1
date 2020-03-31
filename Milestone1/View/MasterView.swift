//
//  listView.swift
//  Milestone1
//
//  Created by Zac Cripps on 8/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    /**
            the following code is used to create a naviagtion view that displays all the potato objects saved into an array
     */
    ///the list changes according to the array in the model
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ///creates the list that utalises the array of potato information
        List{
            ///creates a for loop to run through the array with the var potato
            ForEach(viewModel.potatos) { potato in
                NavigationLink(destination: DetailView(model: potato)){
                        ///places the elements in a single line

                        
                        ExtractedView(potato: potato)

                }
            }.onDelete{indices in
            indices.forEach {self.viewModel.deleteItems(index:$0)}
}

}

}

struct ExtractedView: View {
    @ObservedObject var potato: Potato
    var body: some View {
        HStack(){
        potato.getImage().resizable()
        .padding(.vertical, 5.0)
        .frame(width: 80.0, height: 80.0)
        .shadow(radius: 10)
        .scaledToFit()
            
        Text(potato.name).fontWeight(.bold)
            
        
        Text(potato.scienceName)
        .font(.subheadline)
        .fontWeight(.light)
        .italic()
        .frame(maxWidth: .infinity, alignment: .trailing)
            }
    }
}
}
