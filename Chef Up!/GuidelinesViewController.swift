//
//  GuidelinesViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 15/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class GuidelinesViewController: UIViewController {

    
    @IBOutlet weak var guide: UILabel!
    @IBOutlet weak var purpose: UILabel!
    @IBOutlet weak var elizabethImage: UIImageView!
    @IBOutlet weak var christinaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guide.text = " • V means that a recipe can be made vegetarian.\n • V* means that a recipe can be made vegan. In most cases, this means substituting regular milk for vegan milk, such as almond or oat milk, and substituting vegan yogurt for regular yogurt. Alternative sweeteners like agave or maple syrup can also be easily substituting for honey. "
        
        christinaImage.image =  UIImage(named: "christina")
        
        elizabethImage.image =  UIImage(named: "elizabeth")
        
        purpose.text = "Our names are Elizabeth Frey and Christina Yoh, and we are high school seniors about to head off to college in the fall. The idea for this application came about because, among our peers, we saw a lack of an ability to quickly make nutritional snacks. Going into college, we both believe that it is important to develop healthy, nutritious eating habits early. It was clear that easily accessible, healthy, and simple to create recipes within a phone application was the solution. Who doesn’t carry their phone around with them?\n\nBoth of us, through our experience as high school varsity athletes, deeply value the importance of eating healthy. With the transition to college, we both hope to continue maintaining healthy living and eating habits. Having a shared desire to help others as well as a penchant for entrepreneurship, we wanted to make something in which we could share our knowledge with our peers. Combining our expertise and interests in nutrition/recipe development (Christina) and computer science/app development (Elizabeth), we decided to take on the challenge of creating a simple but effective recipe app that college students can take wherever they go. Our aim is to empower college students to develop healthy lifestyle habits, one recipe at a time."
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
