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
    ///@ObservedObject is a property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes. links the class potato so that objects can use its parameters
    @ObservedObject var model: Potato
    ///A property wrapper type that can read and write a value managed by SwiftUI.
    ///used to set the inital state of the url string
    @State var url: String = ""
    
    var body: some View {
        
        ///formats all text and images in a vertical stack
        VStack(alignment: .center) {
            ///display the name for the object on the screen
            TextField(ViewModel.newElementTextPlaceHolder, text: $model.name)
                .font(.title)
            HStack{
                ///display text "nutrition:"
                Text(ViewModel.scientificPlaceHolder)
                .font(.subheadline)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .frame(maxHeight: .infinity)
                
                ///display the scientific name of potato
                TextField(ViewModel.newElementTextPlaceHolder, text: $model.scienceName)
                    .font(.subheadline)
                    .lineLimit(nil)
            }

            ///retrieve image from getter func
            model.getterImage()
                .resizable()
                .padding(.vertical, 15.0)
                .frame(width: 299.0, height: 300.0)
                .clipShape(Circle())
                .shadow(radius: 10)
                .scaledToFit()
        
            HStack(alignment: .center) {
                ///display the following elements horizontally
                VStack(alignment: .trailing){
                    ///display text "family:"
                    Text(ViewModel.familyPlaceHolder)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity)
                    
                    ///display text "weight:"
                    Text(ViewModel.weightPlaceHolder)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity)
                    
                    ///display text "nutrition:"
                    Text(ViewModel.nutritionPlaceHolder)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity)
                    ///display text "Image URL"
                    Text(ViewModel.imageURLPlaceHolder)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity)
                    
                    ///display text "Notes:"
                    Text(ViewModel.notesPlaceHolder)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity)

                }
                
                VStack(alignment: .leading){
                    ///display default text "<new>" or display the family of potato if there is a string in the object property
                    TextField(ViewModel.newElementTextPlaceHolder,text: $model.family)
                    .multilineTextAlignment(.leading)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                    ///display default text "<new>" or display the weight of potato if there is a string in the object property
                    TextField(ViewModel.newElementTextPlaceHolder, text: $model.weight)
                    .multilineTextAlignment(.leading)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                    ///display default text "<new>" or display the nutrition of potato if there is a string in the object property
                    TextField(ViewModel.newElementTextPlaceHolder, text: $model.nutrition)
                    .multilineTextAlignment(.leading)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    ///display default text "URL of image" or display the url of potato if there is a string in the object property
                    TextField(ViewModel.imageURLTextFieldPlaceHolder, text: self.$url)
                    {
                        ///send url string as a parameter for func updateImage()
                        self.model.updateImage(imageURL: self.url)
                        
                    }.textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    ///display default text "Add a note" or display the notes of potato if there is a string in the object property
                    TextField(ViewModel.notesTextFieldPlaceHolder, text: self.$model.note)
                    .textFieldStyle(RoundedBorderTextFieldStyle())


                }
            } .padding(.horizontal)
             .fixedSize(horizontal: false, vertical: true)

        }
        .padding(.bottom, 150.0)
    }
}

