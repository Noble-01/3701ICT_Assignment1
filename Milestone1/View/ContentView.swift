//
//  ContentView.swift
//  Milestone1
//
//  Created by Zac Cripps on 4/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    /**
        the follwoing code is used to display the information about the potato objects when they are selcted from the MasterView
     */
    //links the struct potato so that objects can use its parameters
    var potato: Potato
    
    var body: some View {
        //formats all text and images in a vertical stack
        VStack(alignment: .center) {
            //display the name for the object on the screen
            Text(potato.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(potato.scienceName)
                .font(.subheadline)
                .fontWeight(.light)
                .italic()
                .lineLimit(nil)
                .padding(.bottom, 15.0)
            //display the image called "potato" in the Assets folder
            Image(potato.image)
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
                    Text(potato.family)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                        
                    Text(potato.weight)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                    
                    Text(potato.nutrition)
                    .multilineTextAlignment(.center)
                }
            }
        }
        .padding(.bottom, 150.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    ///link the struct to the static view
    ///creates the object with the following parameters
    static var previews: some View {
        ContentView(potato: Potato( name: "Kipfler", family: "Sweet Potato", weight: "20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato"))
    }
}
