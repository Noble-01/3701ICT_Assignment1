//
//  DetailView.swift
//  Milestone1
//
//  Created by Zac Cripps on 17/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    /**
        the follwoing code is used to display the information about the potato objects when they are selcted from the MasterView
     */
    ///A property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes.
    ///links the class potato so that objects can use its parameters
    @ObservedObject var model: Potato
    ///A property wrapper type that can read and write a value managed by SwiftUI.
    ///used to set the inital state of the url string
    @State var url: String = ""
    
    var body: some View {
        ///formats all text and images in a vertical stack
        VStack(alignment: .center) {
            ///display the name for the object on the screen
            TextField( "<new>", text: $model.name)
                .font(.title)

            
            TextField("<new>", text: $model.scienceName)
                .font(.subheadline)
                .lineLimit(nil)

            model.getImage()
                .resizable()
                .padding(.vertical, 15.0)
                .frame(width: 299.0, height: 300.0)
                .clipShape(Circle())
                .shadow(radius: 10)
                .scaledToFit()
        
            HStack(alignment: .center) {
                ///display the following elements horizontally
                VStack(alignment: .trailing){
                    Text("Family:").fontWeight(.bold).multilineTextAlignment(.center)
                        .padding(.bottom, 10.0)
                    
                    Text("Weight:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                
                    Text("Nutrition: ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                }
                
                VStack(alignment: .leading){
                    TextField("<new>" ,text: $model.family)
                    .multilineTextAlignment(.leading)

                        
                    TextField("<new>", text: $model.weight)
                    .multilineTextAlignment(.leading)

                    
                    TextField("<new>", text: $model.nutrition)
                    .multilineTextAlignment(.leading)
                }
            }
            ///Added text and text field to HStack
            HStack(){
                Text("Notes: ")
                .fontWeight(.bold)
                TextField("Add a note", text: self.$model.note)
                
                Text("Image URL: ")
                .fontWeight(.bold)
                TextField(ViewModel.URLPlaceHolder, text: self.$url){
                    self.model.updateImage(imageURL: self.url)
                }
            }

        }
        .padding(.bottom, 150.0)
    }
}


