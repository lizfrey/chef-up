//
//  NutritionViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 27/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class NutritionViewController: UIViewController {

    @IBOutlet weak var nutrition1: UILabel!
    @IBOutlet weak var nutrition2: UILabel!
    @IBOutlet weak var conclusionLabel: UILabel!
    @IBOutlet weak var sources: UILabel!
    
    let nut1 = "As people become more aware of their health and wellbeing, there has been large circulation about what foods are considered “healthy”. Some swear on a paleo diet, eating foods that became common around 10,000 years ago, while others are advocates of the plant-based lifestyle, eating foods derived from plants, with no animal products. But regardless of the type, all these diets are trying to accomplish one thing – making sure our body gets the most nutrients possible.\n\nBut what foods are considered “nutritious” anyways? According to the World Health Organization, essential nutrients are compounds that the body can’t make sufficiently, so they must come from food. These nutrients – which are vital for our growth, disease prevention, and overall health – can be broken into two main categories: macronutrients and micronutrients.\n\nMacronutrients are the bulk of any person’s diet, consisting of carbohydrates, proteins (amino acids), fats, and macrominerals, and water."
    
        let nut2 = "In addition to macronutrients, a nutritious diet also includes micronutrients. Micronutrients include vitamins and minerals, which are both vital to proper bodily function; an adequate intake of vitamins and minerals is important because each has a different role in the body. Though micronutrients are “micro”, meaning only a small amount is needed, they are still very important for our body. Micronutrients are essential nutrients, meaning they need to be obtained from food.\n\nThough there are a large amount of micronutrients, the most important ones (in public health terms) are iodine, Vitamin A, and Iron."
        
        let sourcesT = "Sources:\n • https://hekagoodfoods.com/blogs/heka-keto/how-macronutrients-affect-the-body-in-the-keto-diet \n •  https://spsthrive.com/story/eating-healthier/ \n • https://juicing-for-health.com/amino-acids-and-proteins \n • https://www.thespruceeats.com/basics-of-understanding-fats-2246222 \n • https://www.livescience.com/51976-carbohydrates.html \n • https://www.medicalnewstoday.com/articles/161547 \n • https://www.diabetes.org/glycemic-index-and-diabetes \n • https://www.healthline.com/nutrition/essential-amino-acids \n • https://www.hsph.harvard.edu/nutritionsource/carbohydrates/carbohydrates-and-blood-sugar/ \n • https://www.health.harvard.edu/staying-healthy/the-truth-about-fats-bad-and-good \n • https://www.webmd.com/food-recipes/trans-fats \n • https://www.helpguide.org/articles/healthy-eating/choosing-healthy-fats.htm \n • https://www.healthline.com/nutrition/micronutrients#types-and-functions"
    
    let conclusion = "What does all this mean for us? A nutritious diet, therefore, is a diet that consists of all the macro and micronutrient groups, as well as containing the healthier sources of these macronutrients. While this may be hard to keep track of, choosing to eat whole, minimally processed foods most of the time  is usually a safe bet. \n\nThere are millions of ways to obtain all of the correct nutrients, so being aware of the nutritional values of different foods that you consume and making smart choices can get you a long way."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nutrition1.text = nut1
        nutrition2.text = nut2
        conclusionLabel.text = conclusion
        sources.text = sourcesT
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
