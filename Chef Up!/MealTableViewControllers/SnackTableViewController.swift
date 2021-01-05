//
//  SnackTableViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 14/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class SnackTableViewController: UITableViewController {

    var meals = [Meal]()
    
    var mealToBeSent: Meal = Meal(name: "Default Meal", photo: UIImage(named: "defaultImage"), vegan: true,veg: false, ingrediants: "ingrediants", recipe: "recipe", time: "time", desc: "desc")!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

        
        loadSampleMeals()
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MealTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }

        // Configure the cell...

        // Fetches the appropriate meal for the data source layout.
        let meal = meals[indexPath.row]
        
        cell.nameLabel.text = meal.name
        cell.foodImage.image = meal.photo
        if meal.veg == true {
            cell.vegLabel.text = "V"
        }
        else{
            cell.vegLabel.text = ""
        }
        
        if meal.vegan == true {
            cell.veganLabel.text = "V*"
        }
        else {
            cell.veganLabel.text = ""
        }
        
        cell.timeLabel.text = meal.time
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        mealToBeSent = meals[indexPath.row]
        self.performSegue(withIdentifier:"snackSegue", sender:nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let info = segue.destination as! MealViewController
        info.myMeal = mealToBeSent
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private func loadSampleMeals() {
                
        guard let meal1 = Meal(name: "Peanut Butter Yoghurt Banana Toast", photo: UIImage(named: "PB Yoghurt Banana Toast"), vegan: true, veg: true, ingrediants: "• 1 banana\n• 1 tablespoon of peanut butter (or nut butter of choice)\n• 1 piece of toast\n• 2 tbsp greek yoghurt/yoghurt of choice", recipe: "1) On a piece of bread, add on the dollop of greek yoghurt and spread nicely.\n\n2) Drizzle on one tablespoon of peanut butter for extra creaminess.\n\n3) Top with 1 sliced banana and garnish with a dash of cinnamon for extra flavor!", time: "5-10 minutes", desc: "Peanut butter and greek yoghurt provide a double whammy of protein to keep you full, and the chopped banana adds some sugar for a mid-studying pick me up.") else {
                fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = Meal(name: "Apple Nachos", photo: UIImage(named: "Apple Nachos"), vegan: true,veg: true, ingrediants: "• 1 apple, sliced around ½ inch thick\n• 1-2 tablespoons of peanut butter/other nut butter\n• Granola\n• Chocolate chips\n• Other toppings: coconut flakes, nuts, berries etc.", recipe: "1) Slice one apple thinly, with each slice around  ½ inch thick.\n\n2) Fan out the apple slices onto a plate, then drizzle with as much peanut butter/nut butter as desired.\n\n3) Top with granola, chocolate chips, and any other toppings you have on hand!", time: "5-10 minutes", desc: "A unique, sweet twist on nachos, but just as delicious! Great as an afternoon study snack.") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = Meal(name: "Cinnamon 'Frosting' Dip", photo: UIImage(named: "Cinnamon _Frosting_ Dip"), vegan: true, veg: true, ingrediants: "• ½ cup of greek yoghurt/vegan yoghurt\n•  1 tablespoons of natural sweetner (honey/maple syrup)\n• ½ teaspoon of cinnamon powder\n• A dash of vanilla extract (optional)\n• Fruit for dipping (strawberries, apples etc.)", recipe: "1) In a bowl, combine all ingredients and stir until smooth.\n\n2) Cut up some of your favorite fruits and enjoy! This  tastes great with graham crackers or cereal.", time: "5-10 minutes", desc: "No joke, this is so good you’ll want to eat it with a spoon! Making your own sweetened yoghurt dip ensures that all the ingredients you put in are natural and high quality. Cinnamon is also loaded with antioxidants and is anti-inflammatory!") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal4 = Meal(name: "Tuna Salad Rice Cake", photo: UIImage(named: "Tuna Salad Rice Cake"), vegan: false, veg: false, ingrediants: "• 1 can of tuna (in water), drained\n• 2 teaspoons of mayonnaise\n• 2 teaspoons of greek yoghurt\n• 3 tablespoons yellow onion, chopped (optional)\n• Salad leaves (optional)\n• 2 rice cakes\n• Salt and pepper, to taste", recipe: "1) In a bowl, mix the tuna, mayonnaise, and greek yoghurt until well incorporated. You can also add in 3 tablespoons of chopped yellow onion for extra flavor.\n\n2) Sprinkle salt and pepper to taste.\n\n3) On the rice cakes, layer some salad leaves (for  nutrients and color!), then pile on your tuna salad.\n\n4) Consume for a super easy and filling snack!", time: "10-15 minutes", desc: "A quick and filling snack, the creamy tuna spread on top of the crispy rice cake provides a contrast in texture and flavor.") else {
            fatalError("Unable to instantiate meal4")
        }
        
        guard let meal5 = Meal(name: "Nachos in a Mug", photo: UIImage(named: "Nachos in a Mug"), vegan: true, veg: true, ingrediants: "• ⅓  cup canned reduced fat refried beans\n• 1 heaped tablespoon cup of salsa (use your favorite brand!)\n• ⅓  cup of shredded cheese/vegan cheese\n• Around 12 corn tortilla chips\n• 1 tablespoon of canned corn\n• ¼ avocado", recipe: "1) In a medium sized bowl, stir together the refried beans and the salsa\n\n2) In a microwavable mug, layer crushed up tortilla chips, refried bean mixture, and shredded cheese. Repeat 4 times, or until all the ingredients are used up.\n\n3) Microwave on high for 1 minute, or until all the cheese is melted.\n\n4) Top with some corn, cubed avocado, and more salsa for freshness!", time: "5-10 minutes", desc: "This single-serve nachos will help quell those late-night cravings (and control your portion size..). Add on as many toppings as you have on hand!") else {
            fatalError("Unable to instantiate meal5")
        }
        
        guard let meal6 = Meal(name: "DIY Trail Mix", photo: UIImage(named: "DIY Trail Mix"), vegan: true, veg: true, ingrediants: "Pick one from each category:\n\nNuts: \n  • Cashews\n  • Peanuts\n  • Almonds\n  • Walnuts\n  • Pecans\n\nDried Fruit: \n  • Raisins\n  • Cranberries, Banana chips\n\nSweets: \n  • Marshmallows\n  • M&M’s\n  • Chocolate chips\n\nGrains: \n  • Granola\n  • Pretzels\n  • Popcorn\n  • Cereal", recipe: "Combine ½ cup of each desired ingredient into a large bag. Enjoy and store for whenever you need quick  a power snack!", time: "5-10 minutes", desc: "Making a bag of trail mix to have in your dorm while you’re studying can be an easy way to prevent yourself from reaching for a bag of processed chips or sugar, not to mention give you brain power to study longer.") else {
            fatalError("Unable to instantiate meal6")
        }
        
        guard let meal7 = Meal(name: "Avocado Rice Cake", photo: UIImage(named: "Avocado Rice Cake"), vegan: true, veg: true, ingrediants: "• 1 rice cake\n• ½ a small avocado, diced\n• Salt and pepper\n• Chilli", recipe: "1) Layer the diced avocado onto the rice cake.\n\n2) Sprinkle with salt, pepper, and chilli flakes for a nice kick.\n\n3) Enjoy!", time: "5-10 minutes", desc: "This recipe requires only three ingredients, but the healthy monounsaturated fats in the avocado will keep you full for longer.") else {
            fatalError("Unable to instantiate meal6")
        }
        
        meals += [meal1, meal2, meal3, meal4, meal5, meal6, meal7]
    }
}
