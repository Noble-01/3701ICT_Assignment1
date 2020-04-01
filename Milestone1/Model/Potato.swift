//
//  Potato.swift
//  Milestone1
//
//  Created by Zac Cripps on 5/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//
//the struct contains all the parameters that make for the objects in "Potato"
import SwiftUI
class Potato : ObservableObject, Identifiable{
    ///A class of types whose instances hold the value of an entity with stable identity
    ///id is given to identify the objects of potatos in the array
    var id = UUID()
    ///generic name for potato
    @Published var name:String
    ///scientific name for potato
    @Published var scienceName:String
    ///type of family for potato
    var family:String
    ///weight of the potato
   var weight: String
    ///nutrition values of potato
    var nutrition:String
    ///image name for potato in the assets folder
    @Published var image:String
    ///remote URL variable name
    ///UIImage: An object that manages image data in your app.
    ///Either stores an image or is blank
    @Published var uiImage:UIImage?
    ///string for textfield car note
    @Published var note: String = ""
    
    ///initialize the attributes of the class
    init(name:String, family:String, weight:String, scienceName:String, nutrition:String, image: String) {
        self.name = name
        self.family  = family
        self.weight = weight
        self.scienceName = scienceName
        self.nutrition = nutrition
        self.image = image
    }
    ///function is used to update the  uiImage variable and assign a image to the prarameter.
    ///Parameters_one: String  contains the url for the location of the image
    func updateImage(imageURL: String){
        ///guard unrwaps the variable so it the program doesn't throw a fatal error
        guard let url = URL(string: imageURL),
        let imageData = try? Data(contentsOf: url),
        let uiImage = UIImage(data: imageData)
        else{
            ///If no image is retrieved from the url return nil for the var
            self.uiImage = nil
            return
        }
        ///return var with image data
        self.uiImage = uiImage
    }
    func getterImage () -> Image{
        if let uiImage = uiImage {
            return Image (uiImage: uiImage)
        } else {
            return Image(image)
        }
    }

}
