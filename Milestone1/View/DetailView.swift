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
    ///links the class potato so that objects can use its parameters
    ///keeps track of the potato object
    @ObservedObject var model: Potato
    
    var body: some View {
        //formats all text and images in a vertical stack
        VStack(alignment: .center) {
            //display the name for the object on the screen
            Text(model.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(model.scienceName)
                .font(.subheadline)
                .fontWeight(.light)
                .italic()
                .lineLimit(nil)
                .padding(.bottom, 15.0)
            //display the image called "potato" in the Assets folder
            Image(model.image)
                .resizable()
                .padding(.vertical, 15.0)
                .frame(width: 299.0, height: 300.0)
                .clipShape(Circle())
                .shadow(radius: 10)
                .scaledToFit()
        
            HStack(alignment: .center) {
                //display the following elements horizontally
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
                    Text(model.family)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                        
                    Text(model.weight)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                    
                    Text(model.nutrition)
                    .multilineTextAlignment(.center)
                }
            }
            ///Added text and text field to HStack
            HStack(){
                Text("Notes")
                TextField("Add a note", text: self.$model.note)
            }

        }
        .padding(.bottom, 150.0)
    }
}

struct DetailView_Previews: PreviewProvider {
    ///link the struct to the static view
    ///creates the object with the following parameters
    static var previews: some View {
        DetailView(model: Potato( name: "Kipfler", family: "Sweet Potato", weight: "20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato"))
    }
}
