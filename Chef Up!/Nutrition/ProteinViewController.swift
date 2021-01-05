//
//  ProteinViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 29/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class ProteinViewController: UIViewController {
    
    @IBOutlet weak var prot1: UILabel!
    @IBOutlet weak var prot2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prot1.text = "Proteins, which can be broken down into peptides and amino acids, are required for tissue maintenance, replacement, function, and growth. Normally, protein is not used for energy unless the body is not getting enough calories from carbohydrates or tissue stores (fat). Amino acids are vital for building proteins and synthesizing hormones and neurotransmitters, playing a crucial role in the body (Kubala). 9 of the 20 amino acids in our body are classified as essential, meaning they can’t be made up by the body and must be obtained from diet."
        
        prot2.text = "Although there is no “good” and “bad” protein per say, there are certain proteins with components that if consumed regularly can be damaging to one’s health. For example, some protein is high in saturated fat, which can raise LDL cholesterol in the blood, clogging arteries and resulting in heart disease. As such, most nutritionists recommend consuming mostly lean protein and even plant sources. In fact, many experts agree that even on a vegan/vegetarian diet, one is able to acquire all the protein they need – it’s just a matter of planning your diet carefully (Petre).\n\nSome healthy protein sources include:\n • Salmon and other Seafood\n • Chicken and other White-meat Poultry\n • Greek Yoghurt\n • Egg\n • Lean Beef\n • Soy (Tofu, Tempeh)\n • Beans\n • Nuts and Nut Butters\n • Quinoa\n • Oats and Oatmeal"
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
