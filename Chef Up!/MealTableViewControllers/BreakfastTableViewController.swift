//
//  BreakfastTableViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 14/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class BreakfastTableViewController: UITableViewController {

    var meals = [Meal]()
    
    var mealToBeSent: Meal = Meal(name: "Default Meal", photo: UIImage(named: "defaultImage"), vegan: true,veg: false, ingrediants: "ingrediants", recipe: "recipe", time: "time", desc:"desc")!
    
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
        self.performSegue(withIdentifier:"mealSegue", sender:nil)
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
                
        guard let meal1 = Meal(name: "Classic Vanilla Overnight Oats", photo: UIImage(named: "Classic Vanilla Overnight Oats"), vegan: true, veg: true, ingrediants: "• ⅓  cup of rolled oats\n• ⅓  cup of unsweetened milk of choice\n• ⅓ cup of greek yoghurt (or plant-based)\n• A splash of vanilla\n• 1 tablespoon of agave/honey", recipe: "1) Combine all the ingredients in a mason jar and shake well. Refrigerate for at least 2 hours or overnight.\n\n2) Eat plain or add toppings (berries, chocolate, nuts work great) and additional sweetener if desired!", time: "5-10 minutes",desc: "This super easy make-ahead breakfast will make your mornings so much better! The oats provide a good source of whole-grain energy while the greek yoghurt helps you pack in some healthy protein to start off the day.") else {
                fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = Meal(name: "Chocolate Banana Overnight Oats", photo: UIImage(named: "Choc Banana Overnight Oats (updated)"), vegan: true,veg: true, ingrediants: "• 1 banana\n• ⅓  cup of rolled oats\n• 1 heaped tablespoon of cocoa powder\n• ⅓  cup of unsweetened milk of choice\n• ⅓  cup of greek yoghurt (or plant-based)\n• 1 tablespoon of agave/honey", recipe: "1) Mash half of a banana in a mason jar. Save half a banana for topping.\n\n2) Combine all the rest of the ingredients together in the mason jar. Shake to combine well, then refrigerate for at least 2 hours or overnight.\n\n3) Top with sliced other half of the banana and sprinkle some more chocolate chips the next morning!", time: "5-10 minutes", desc: "A healthy twist on classic flavors – who could say no? The oats provide a good source of whole-grain energy; the bananas give you a kick of potassium, and the greek yoghurt helps you pack in some healthy protein to start off the day. The cocoa powder just brings this whole dish together: it’s like dessert for breakfast!") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = Meal(name: "Apple Pie Overnight Oats", photo: UIImage(named: "Apple Pie Overnight Oats"), vegan: true, veg: true, ingrediants: "• ½  an apple, chopped\n• ⅓ cup rolled oats\n• ⅓  cup of unsweetened milk of choice\n• ⅓  cup of greek yoghurt (or plant-based)\n• 1 tablespoon of chia seeds (optional)\n• 1 tablespoon of cinnamon\n• A splash of vanilla\n• 1 tablespoon of agave/honey\n• 1 tablespoon of granola (optional)", recipe: "1) Reserve half of the chopped apple  (¼ of the apple) for toppings.\n\n2) Combine chopped apple, rolled oats, milk, yoghurt, vanilla, agave/honey, and chia seeds (optional)  together in the mason jar. Shake to combine well, then refrigerate for at least 2 hours or overnight.\n\n3) When you're ready to eat, top with the rest of the chopped apple, some granola for crunch, a dash of cinnamon and enjoy!", time: "5-10 minutes", desc:"This dish is perfect for the fall – or when you’re missing the beautiful fall weather. In addition to the whole-grain oats, protein-packed greek yoghurt, and superfood chia seeds, the cinnamon apples just add a lot of natural sweetness to these creamy oats without adding any refined sugars.") else {
            fatalError("Unable to instantiate meal3")
        }
        
        guard let meal4 = Meal(name: "Creamy Basic Oatmeal", photo: UIImage(named: "Creamy Basic Oatmeal"), vegan: true, veg: true, ingrediants: "• 1 banana\n• ⅓ cup of rolled oats\n• ⅔ cup of water or milk of choice\n• 1 tablespoon of nut butter", recipe: "1) Mash ½ a banana with a fork into a microwave-safe bowl. Add in oats and water/milk and stir well.\n\n2) Microwave for 1 minute, stir, then 20 second intervals until creamy and smooth.\n\n3) Top with one tablespoon of nut butter, rest of chopped banana, and enjoy!", time: "5-10 minutes", desc: "This recipe has only four ingredients, but produces one of the heartiest breakfasts to start off your day! Bananas are an excellent source of vitamins A, C, and potassium, and they contain three natural sugars! Combined with whole grain oats and some nut butter packed with healthy proteins and fats, this recipe is perfect fuel for your next endeavor!") else {
            fatalError("Unable to instantiate meal4")
        }
        
        guard let meal5 = Meal(name: "Peanut Butter and Jelly Oats", photo: UIImage(named: "PB+J Oats (updated)"), vegan: true, veg: true, ingrediants: "• ½ banana\n• ½ cup of oats\n• 1 cup of water\n• ½  cup of frozen berries\n• Peanut Butter", recipe: "1) In a bowl, mash the banana.\n\n2) In the same bowl, add in ½ cup of oats, 1 cup of water, and microwave for 2 mins, stirring every minute.\n\n3) In a separate bowl, microwave frozen berries (I used blackberries and raspberries) for around 1 minute or until juices start to flow, then add to the top of your oats.\n\n4) Drizzle with as much peanut butter as you please!", time: "5-10 minutes", desc: "This contains all the nutrients and benefits of the creamy basic oatmeal, but is reminiscent of the childhood classic. The microwaved frozen berries add a touch of tartness and freshness to the dish – not to mention they’re very high in fiber, vitamin C, and antioxidants!") else {
            fatalError("Unable to instantiate meal5")
        }
        
        guard let meal6 = Meal(name: "Chocolate Lover’s Oats", photo: UIImage(named: "Chocolate Lover_s Oats"), vegan: true, veg: true, ingrediants: "• ½ banana (½ mashed, ½ for toppings) \n• ⅓ cup of oats\n• 2 tablespoons of cocoa powder\n• ⅔ cup of milk/water ( I used chocolate almond milk)\n• 2 tablespoons of chocolate chips (optional)", recipe: "1) Mash ½ a banana with a fork into a microwave-safe bowl. Add in oats, cocoa powder, 1 tablespoon of chocolate chips, and water/milk and stir well.\n\n2) Microwave for 1 minute, stir, then 20 second intervals until creamy and smooth.\n\n3) Top with one tablespoon of chocolate chips and the rest of chopped banana. Enjoy while hot!", time: "5-10 minutes", desc: "Chocolate for breakfast? This triple whammy will satisfy all your sweet cravings while giving you the energy you need to start the day (without the sugar crash, of course). Both whole-grain oats and bananas are healthy complex carbohydrates which will supply slow-release energy to get you through your morning classes!") else {
            fatalError("Unable to instantiate meal6")
        }
        
        guard let meal7 = Meal(name: "Blueberry and Banana 'Baked' Oats", photo: UIImage(named: "Blueberry Banana _Baked_ Oats"), vegan: true, veg: true, ingrediants: "• 1 banana (½ mashed, ½ for topping)\n• ½ cup of oats\n• ½ cup of water/milk of choice\n• ½ cup of blueberries (¼ cup mix in, ¼ cup topping)\n• Dash of cinnamon\n• Peanut butter (optional topping)", recipe: "1) In a bowl, mash half the banana.\n\n2) In the same bowl, add in ½ cup of oats and ½ cup of water, ¼ cup of blueberries, and a dash of cinnamon. Mix well before microwaving for 2 mins, stirring after 1 minute. These oats will be “drier” than the typical oats.\n\n3) Top with sliced banana and blueberries.\n\n4) Drizzle with as much peanut butter as you please!", time: "5-10 minutes", desc: "Too bored of eating creamy oats? These “baked” oats provide an alternative texture -- like bread pudding for breakfast, it almost feels like you’re eating a cake (but it’s good for you).") else {
            fatalError("Unable to instantiate meal7")
        }
        
        
        
        guard let meal8 = Meal(name: "Simple Scrambled Eggs", photo: UIImage(named: "Simple Scrambled Eggs"), vegan: false, veg: true, ingrediants: "• 2 large eggs\n• 1 tablespoon of milk\n• Salt and pepper, to taste", recipe: "1) Spray a microwave-safe mug or bowl with non-stick cooking spray.\n\n2) Stir eggs and milk thoroughly, then add a sprinkle of salt and pepper\n\n3) Microwave for around 1 minute and 30 seconds, checking and stirring every 30 seconds. Next in 10 second increments, microwave and check on the eggs until they are fully cooked through.\n\n4) Eat the eggs plain, or place inside an english muffin or two slices of bread with some avocado, cheese, turkey for a hearty sandwich!", time: "5-10 minutes", desc: "A great source of protein and healthy fats, these eggs for breakfast will keep you satisfied for longer. Not to mention, it's so easy to make!  Pair with some fruit, toast, or cereal for an even heartier meal!") else {
            fatalError("Unable to instantiate meal8")
        }
        
        guard let meal9 = Meal(name: "Make-Ahead Breakfast Wrap", photo: UIImage(named: "Make-ahead breakfast Wrap"), vegan: false, veg: true, ingrediants: "• 1 serving of simple scrambled eggs\n• 1 soft whole grain tortilla [Ex: Food for life Sprouted Whole Grain Tortillas]\n• 2 tablespoon of light shredded cheese\n• 1 tablespoon salsa", recipe: "1) Place tortilla on a microwave safe-plate.\n\n2) Cover the tortilla with a damp paper towel. Microwave on high for 30 seconds to a minute.\n\n3) Top tortilla with a serving of simple scrambled eggs recipe and 2 tablespoons of light shredded cheese\n\n4) Microwave for 20 seconds, or until cheese is melted.\n\n5) Top with one tablespoon of your favorite salsa (if not freezing)\n\n6) Fold in the edges of the tortilla and the side\n\n7) Enjoy or freeze after the burrito is cooled down!\n\n8) If freezing, top burritos with salsa AFTER reheating.\n\nNOTE: To reheat frozen burritos, just microwave for a minute or two.", time: "10-15 minutes", desc: "Packing in a punch of flavor, these breakfast wraps are so easy to grab on to go when you’re running late for class. A healthy combo of protein (eggs), dairy (cheese), and complex carbohydrates (whole grain tortillas) will set you off on the right foot!") else {
            fatalError("Unable to instantiate meal9")
        }
        
        guard let meal10 = Meal(name: "Avocado and Eggs on Toast", photo: UIImage(named: "Avocado and Eggs on Toast"), vegan: false, veg: true, ingrediants: "• ½  medium avocado\n• 1 slice of whole grain bread\n• 1 serving of simple scrambled eggs\n• Salt\n• Pepper\n• Chilli flakes (optional)", recipe: "1) Chop ½ a medium avocado into bite size chunks.\n\n2) In a microwave, make 1 serving of simple scrambled eggs.\n\n3) Top scrambled eggs onto bread, then add on the chunks of avocado.\n\n4) Garnish with salt, pepper, and chilli flakes!", time: "5-10 minutes", desc: "Why go out and buy a $15 dollar plate of avocado toast when you can make it on your own instead at a fraction of the cost? Nutrient-packed avocados provide healthy monounsaturated fats, while eggs provide a good source of protein to kick-start your day.") else {
            fatalError("Unable to instantiate meal11")
        }
        
        guard let meal11 = Meal(name: "Peanut Butter and Banana Toast", photo: UIImage(named: "PB+B Toast"), vegan: true, veg: true, ingrediants: "• 1 banana\n• 1 tablespoon of peanut butter (or nut butter of choice)\n• 1 piece of toast", recipe: "1) Heat up bread by microwaving for 15 seconds.\n\n2) Spread peanut butter evenly onto toast.\n\n3) Chop banana into ~ 1inch thick slices.\n\n4) Top with chopped banana, and garnish with a dash of cinnamon for extra flavor!", time: "5-10 minutes", desc: "Only 3 ingredients? This killer combo provides slow-release energy as well as healthy fats and protein to keep you full and fueled.") else {
            fatalError("Unable to instantiate meal12")
        }
        
        guard let meal12 = Meal(name: "Mug French Toast", photo: UIImage(named: "Mug French Toast"), vegan: false, veg: true, ingrediants: "• 1 slice of white or whole wheat bread\n• 1 egg\n• 2 tbsp of milk\n• A dash of cinnamon\n• One teaspoon of brown sugar (optional)\n• Maple syrup (optional)", recipe: "1) Cut up a slice of bread into cubes (around 4x4 squares), then place into a microwave safe mug.\n\n2) In another bowl, stir together 1 egg, 2 tbsp of milk, a dash of cinnamon, and a teaspoon of brown sugar.\n\n3) Pour the egg mixture onto the pieces of bread.\n\n4) Mix well until all the bread pieces are well coated.\n\n5) Microwave the mixture for around 1:30.\n\n6) Top with maple syrup and fruit, and enjoy!", time: "10-15 minutes", desc: "A Sunday brunch favorite – but this version only takes less than 5 mins and can be made right in your dorm room! This seemingly indulgent treat is actually made up of a healthy mixture of proteins, carbohydrates, and dairy.") else {
            fatalError("Unable to instantiate meal13")
        }
        
        guard let meal13 = Meal(name: "Make-Ahead Yoghurt Parfait", photo: UIImage(named: "Make-ahead Yoghurt Parfait"), vegan: true, veg: true, ingrediants: "• ½ cup yoghurt of choice (vegan yoghurt works too!)\n• ¼ cup granola or cereal of choice\n• ½ cup fresh or frozen berries\n• 1 banana, sliced\n• 1 tablespoon maple syrup or honey", recipe: "1) In a mason jar/bowl, add in ¼ cup of yoghurt, then top with ¼  cup of frozen/fresh berries and 4 sliced of chopped banana.\n\n2) Repeat to create another  layer or two.\n\n3) Top with granola/cereal of choice, then store in the fridge.\n\n4) Before consuming, drizzle on 1 tablespoon of maple syrup/honey and enjoy!", time: "5-10 minutes", desc: "This recipe is simple, but so delicious! Plain unsweetened yoghurt combined with fresh fruits and granola is a tastier and healthier choice than the sugary flavored yoghurts you find, but just as easy to make!") else {
            fatalError("Unable to instantiate meal14")
        }
        
        guard let meal14 = Meal(name: "Blueberry Muffin", photo: UIImage(named: "Microwavable Blueberry Muffin"), vegan: false, veg: true, ingrediants: "• ⅓ cup milk of choice\n• 1 mashed banana\n• 1 egg\n• 1 tbsp maple syrup (or honey, sugar)\n• ½ cup of old fashioned oats\n• ⅓ cup fresh/frozen blueberries\n• One teaspoon (a dash) of cinnamon", recipe: "1) Spray a large bowl or mug with cooking spray.\n\n2) Mix together milk, banana, egg, and maple syrup in the large bowl or mug. Stir thoroughly.\n\n3) Add in oats and cinnamon, then fold in blueberries.\n\n4) Microwave for 2 minutes (it will fluff up a lot). Then, microwave for 15 second segments until fully cooked through.", time: "5-10 minutes", desc: "While only made with wholegrain oats, natural sugars, and a protein-rich binder, these muffins will satisfy your sweet cravings – not to mention that they're perfect with coffee too!") else {
            fatalError("Unable to instantiate meal15")
        }
        
        meals += [meal1, meal2, meal3, meal4, meal5, meal6, meal7, meal8, meal9, meal10, meal11, meal12, meal13, meal14]
    }
}
