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
    
    @Published var uiImage:UIImage?
    
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
    func updateImage(imageURL: String){
        guard let url = URL(string: imageURL),
        let imageData = try? Data(contentsOf: url),
        let uiImage = UIImage(data: imageData)
        else{
            self.uiImage = nil
            return
        }
        self.uiImage = uiImage
    }
    func getImage () -> Image{
        if let uiImage = uiImage {
            return Image (uiImage: uiImage)
        } else {
            return Image(image)
        }
    }

}
