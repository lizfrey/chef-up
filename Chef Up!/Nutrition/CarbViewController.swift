//
//  CarbViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 29/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class CarbViewController: UIViewController {
    
    @IBOutlet weak var carb1: UILabel!
    @IBOutlet weak var carb2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carb1.text = "Carbohydrates are broken down into glucose and other sugars, increasing our blood glucose levels and acting as our immediate source of energy. They  can be found in fruits, grains, vegetables, and milk products as the sugars, starches and fibers; some foods high in carbohydrates include bread, pasta, rice, and cereals. There are some people who steer away from carbs for purposes of losing fat, but the truth is carbohydrates are essential to a healthy diet, providing fuel for our central nervous system and energy for working muscles (Szalay).\n\nThat being said, there are some carbohydrates that are better than others. Simple carbohydrates are sugars (normally consisting of only one or two molecules). Examples of simple carbohydrates include candy and white bread, which provide an immediate source of energy but lead to a faster increase in blood sugar, which can have adverse effects. Complex carbohydrates, on the other hand, have more complex chemical structures, which also means they take longer to digest and cause blood sugar to rise slowly. "
        
        carb2.text = "A scale used to better categorize carbohydrates is the glycemic index (GI), which ranks carbohydrates from a scale of 0-100 based on how quickly/how much they raise blood sugars after eating (Harvard T.H. Chan). Foods with lower GI  release sugars more slowly, which have been shown to help control type 2 diabetes and improve weight loss, while higher GI foods can lead to increased risk of diabetes and obesity.\n\nTo maintain a more nutritious diet, it is better to consume mostly low GI carbohydrates on a daily basis. For college students specifically, low GI carbohydrates means less sugar spikes and an even source of energy throughout the day.\n\nAccording to the American Diabetes Association, some examples of these include:\n • Whole wheat bread\n • Sweet potato, corn, yam, peas, legumes and lentils\n • Most fruits, non-starchy vegetables and carrots\n • Brown, Wild or basmati Rice, couscous\n • Oatmeal, Oat Bran, Muesli\n • Pasta, barley, bulgur"
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
