//
//  FatsViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 29/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class FatsViewController: UIViewController {
    
    @IBOutlet weak var fats1: UILabel!
    @IBOutlet weak var fats2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fats1.text = "Fats, which can be broken down into fatty acids and glycerol, are required for tissue growth and hormone production as well as act as a major source of energy. However, some fats are better than others – good fats include monounsaturated and polyunsaturated fats (commonly derived from plants), bad fats include instrustrial trans fats, and saturated fats (common in animal fats)  are somewhere near the middle. These differences mainly derive from the structural changes in the length and shape of the hydrocarbon chain of fats."
        
        fats2.text = "Trans fats, the worst kind of fat, has been officially banned in many countries, though may still appear in some processed foods. Some of these foods in crackers, cookies, snack foods, frozen pizza, fast food, vegetable shortening and more. Trans fats, also known as partially hydrogenated oils (because of the process of hydrogenation which turns healthy oils into solids), raise your LDL cholesterol level and have no known health benefits.\n\nSaturated Fats, which are solid at room temp and derived from mostly animal ingredients, can be found in red meat, whole milk, cheese, and other foods. While saturated fat isn’t strictly proven to raise heart disease, the truth is that saturated fat can drive up total cholesterol and may be linked to heart disease; thus, saturated fat consumption should be limited.\n\nMonounsaturated and Polyunsaturated Fats, mainly derived from plant products, are liquid at room temperature. Good sources of monounsaturated fats include olive oil, peanut oil, canola oil, avocado, and most nuts. Polyunsaturated fats are essential fats, meaning they are crucial to bodily functions (blood clotting, muscle movement etc.)  but unable to be made from the body and must be obtained by food. The main types of  polyunsaturated fats are omega-3 and omega-6 fatty acids, which include fatty fish, flaxseeds, walnuts, soybean, sunflower, walnut, and corn oils.\n\nSome healthy sources of fat include:\n • Avocados\n • Fatty Fish (Salmon, Tuna, mackerel, sardines)\n • Nuts and Peanut Butter\n • Olive Oil\n • Whole Eggs\n • Soy (Soymilk, Tofu, Soybean Oil)"
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
