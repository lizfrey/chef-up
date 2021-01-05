//
//  DessertTableViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 14/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class DessertTableViewController: UITableViewController {

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
        self.performSegue(withIdentifier:"dessertSegue", sender:nil)
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
        guard let meal1 = Meal(name: "Mug Banana Bread", photo: UIImage(named: "Mug Banana _Bread_ updated"), vegan: true, veg: true, ingrediants: "• ½ a banana, mashed\n• 3 tablespoons of oat flour (quick oats also work)\n• 1 teaspoon of maple syrup\n• 1-2 tablespoons of almond milk (until batter-like consistency)\n• Ground cinnamon", recipe: "1) In a microwave safe bowl, add in all of the ingredients and mix well.\n\n2) Microwave on high for around 2 minutes, then check if it’s fully cooked through.\n\n3) If not, microwave for longer in 15 second intervals until batter is fluffy and cake-like.\n\n4) I topped mine with the other half of sliced banana, a square of dark chocolate and some peanut butter!", time: "5-10 minutes", desc: "A perfect treat when you’re craving something sweet - this fluffy banana bread/mug cake without any butter or refined sugar can be eaten at any time of the day!") else {
                fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = Meal(name: "1-Min Banana Choc Chip Mug Cake ", photo: UIImage(named: "1-min Banana Choc Chip Mug Cake (updated)"), vegan: true,veg: true, ingrediants: "• ½ mashed banana\n• 4 tablespoons quick oats\n• 1 teaspoon applesauce\n• 1 teaspoon milk\n• ½ teaspoon baking powder\n• 1 egg (can substitute flax egg)\n• Chocolate chips!", recipe: "1) Whisk everything together in a microwave safe mug/bowl and put in the oven for 1 min, then 10 sec intervals until desired consistency (I did 1:30 sec total). \n\n2) Add toppings! One option is to drizzle your mug cake with some melted chocolate or peanut butter, add on more chocolate chips. Enjoy!", time: "10-15 minutes", desc: "This mug cake will definitely cure all your sweet cravings, and is so easy to make! A handful of chocolate chips mixed in a healthy base of bananas and quick oats will leave you satisfied.") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = Meal(name: "1-Min Apple Cinnamon Mug Cake", photo: UIImage(named: "1-min Apple Cinnamon Mug Cake"), vegan: true, veg: true, ingrediants: "• ½ mashed banana\n• 4 tablespoons quick oats/oat flour (blend into a flour)\n• ¼ teaspoon baking powder\n• 3 teaspoons applesauce\n• 1 egg", recipe: "1) Whisk everything together in a microwave safe mug/bowl and put in the oven for 1 min, then 10 sec intervals until desired consistency (I did 1:30 sec total). \n\n2) Add toppings! Possible toppings include apples topped with cinnamon and microwaved for a minute - heavenly!", time: "10-15 minutes", desc: "What screams fall like cinnamon and apples? You won’t believe that this comforting mug cake is made with no refined sugars, butter, or plain flour, it tastes so good!") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal4 = Meal(name: "Chocolate-Covered Banana Pops", photo: UIImage(named: "Chocolate-covered Banana Pops"), vegan: true, veg: true, ingrediants: "• 1 banana\n• 3 tablespoons of dark chocolate/vegan chocolate\n• Popsicle sticks\n• Optional Toppings: granola, crushed nuts, cereal", recipe: "1) Slice a banana in half and skewed onto a popsicle stick/toothpick.\n\n2) In a microwave safe bowl/glass, melt half a bar of dark chocolate, stirring in regular 20 second intervals to avoid burning.\n\n3) Drizzle chocolate onto the bananas and place on a sheet/tray.\n\n4) If adding toppings, sprinkle onto the chocolate before putting it into the freezer to solidify.\n\n5) After 2-3 hours in the freezer, take out banana pops and enjoy!", time: "5-10 minutes", desc:"These homemade, all natural banana pops taste like ice cream bars, but you won’t feel guilty having these every night!") else {
            fatalError("Unable to instantiate meal4")
        }
        
        guard let meal5 = Meal(name: "PB Chocolate Banana Cookies", photo: UIImage(named: "PB Chocolate Banana Cookies-1"), vegan: true, veg: true, ingrediants: "• 1 ripe banana\n• 1 teaspoon milk of choice\n• 3 tablespoons of rolled oats\n• 1 tablespoon of peanut butter\n• 2 tablespoon of chocolate chips", recipe: "1) In a medium bowl, mash the banana until relatively smooth.\n\n2) Mix in the milk, oats, and peanut butter until well-combined, then stir in the chocolate chips.\n\n3) On a microwave safe plate, shape the mixture into cookies of desired size and thickness.\n\n4) Microwave for 1 minute and 15 seconds. Enjoy while it's hot!", time: "5-10 minutes", desc: "A plate of cookies is the best dessert while watching a movie with your friends. Make this healthier alternative so you can eat and feel good!") else {
            fatalError("Unable to instantiate meal5")
        }
        
        guard let meal6 = Meal(name: "Frozen Greek Yoghurt Bark", photo: UIImage(named: "Frozen Greek Yoghurt Bark"), vegan: false, veg: true, ingrediants: "• 2 cups of greek yoghurt\n• 2 tablespoons of honey\n• 1 cup of fresh/frozen berries, chopped\n• Other mixins: chocolate chips, nuts, granola, fruit", recipe: "1) In a large bowl, mix together greek yoghurt and honey until combined\n\n2) Pour the greek yoghurt into a large tray/dish. Spread until desired thickness.\n\n3) Top with fresh or frozen berries, as well as other desired mix-ins.\n\n4) Freeze for 3-4 hours or until completely frozen.\n\n5) Remove from freeze and break into pieces before storing in freezer bags for later.", time: "5-10 minutes", desc: "This creamy, naturally-sweetened, and protein packed frozen dessert is the perfect treat for hot days. Have fun mixing in your favorite fruits/toppings to tailor these to your liking!") else {
            fatalError("Unable to instantiate meal6")
        }
        
        guard let meal7 = Meal(name: "One-Minute Mug Brownie", photo: UIImage(named: "One-Minute Mug Brownie"), vegan: true, veg: true, ingrediants: "• 3 tablespoon oat flour/finely ground oats (all purpose flour works as well)\n• 2 tablespoons brown sugar\n• 3 tablespoons cocoa powder\n• 1 tbsp mashed banana (can sub with applesauce, greek yoghurt, or coconut oil)\n• 3 tbsp milk of choice/water\n• A pinch of salt\n• ½ teaspoon vanilla extract (optional)\n• 2 teaspoons chocolate chips (optional)", recipe: "1) In a microwavable mug, mix together all the ingredients, then mix in the chocolate chips.\n\n2) Microwave on high for around 1 minute, or until the batter is cooked through.\n\n3) Consume while warm!", time: "10-15 minutes", desc: "These mug brownies take a bit more effort to make, but still takes less than 10 mins! You won’t believe that these nutritious  ingredients can make something this good.") else {
            fatalError("Unable to instantiate meal5")
        }
        
        meals += [meal1, meal2, meal3, meal4, meal5, meal6, meal7]
    }
}
