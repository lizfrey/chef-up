//
//  MealViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 15/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var recipeLabel: UILabel!
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var time: UILabel!
    
    var myMeal: Meal = Meal(name: "Default Meal", photo: UIImage(named: "defaultImage"), vegan: true,veg: false, ingrediants: "ingrediants", recipe: "recpie", time: "time", desc: "desc")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.title = myMeal.name
        foodImage.image = myMeal.photo
        ingredientsLabel.text = myMeal.ingrediants
        recipeLabel.text = myMeal.recipe
        desc.text = myMeal.desc
        time.text = myMeal.time
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
