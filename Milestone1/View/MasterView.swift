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
        NavigationView{
       ///creates the list that utalises the arrau of potato information
            List(viewModel.potatos){potato in
            ///creates a for loop to run through the array with the var potato
            NavigationLink(destination: DetailView(model: potato)){
                Section{
                    ///places the elements in a single line
                    HStack(){
                    Image(potato.image).resizable()
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
                
                ///Title of navigation
            }
            .navigationBarTitle(Text(self.viewModel.listTitle))
            .navigationBarItems(
                leading: EditButton(),
                trailing:HStack {
                    Button(action:{withAnimation{self.viewModel.addElement()}
                    }){
                        Image(systemName: "plus")
                    }
                }
            )
            }
            .onDelete(perform: deleteItems)
        }
        func deleteItems(at offsets: IndexSet){
            viewModel.potatos.remove(atOffsets: offsets)
        }
    }
}
