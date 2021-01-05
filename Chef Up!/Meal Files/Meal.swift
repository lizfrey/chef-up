//
//  Meal.swift
//  Chef Up!
//
//  Created by Elizabeth on 14/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

public class Meal{
//MARK: Properties

    var name: String
    var photo: UIImage?
    var vegan: Bool
    var veg: Bool
    var ingrediants: String
    var recipe: String
    var time: String
    var desc: String

    //MARK: Initialization
 
    init?(name: String, photo: UIImage?, vegan: Bool, veg: Bool, ingrediants:String, recipe: String, time: String, desc:String) {
    
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.vegan = vegan
        self.veg = veg
        self.recipe = recipe
        self.ingrediants = ingrediants
        self.time = time
        self.desc = desc
    }
}
