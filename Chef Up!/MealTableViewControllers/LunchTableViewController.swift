//
//  LunchTableViewController.swift
//  Chef Up!
//
//  Created by Elizabeth on 14/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class LunchTableViewController: UITableViewController {

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
        self.performSegue(withIdentifier:"lunchSegue", sender:nil)
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
                
        guard let meal1 = Meal(name: "Veggie Egg 'Fried' Rice ", photo: UIImage(named: "Veggie Egg _Fried_ Rice"), vegan: false, veg: true, ingrediants: "• ⅓ cup of raw rice\n• ⅔  cup of water\n• 1 tbsp soy sauce\n• ½ cup of veggies, fresh or frozen (carrots and peas work great)\n• 1 egg\n• chopped scallions (optional)\n• salt", recipe: "1) In a large microwave safe mug/bowl, mix the rice, water, soy sauce, and a pinch of salt.\n\n2) Cover with plastic wrap, poke a hole, and microwave for around 4 minutes, then in 30 second intervals or until rice is fully cooked through (took me around 6 minutes). If your mug is smaller, you may want to place a plate underneath to catch the water that may spill out.\n\n3) Alternatively, you can use pre-cooked rice, omit the water, and microwave for around 1 minute.\n\n4) Stir in the veggies of choice  into the rice, then set aside.\n\n5) In another mug, beat together 1 egg and a pinch of salt.\n\n6) Pour the egg mixture into the rice, and microwave for another minute.\n\n7) Stir well to fluff up the rice, and top with some scallions and chopped chilli for extra flavor!", time: "15-20 minutes", desc: "Fried rice without a stove? This recipe will get you a delicious and hearty asian meal in less than 10 mins -- not to mention a fraction of the price of takeout!") else {
                fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = Meal(name: "Mac and Cheese", photo: UIImage(named: "Mac and Cheese"), vegan: false,veg: true, ingrediants: "• ½ cup of dried macaroni/shell/penne pasta\n• 1 tablespoon of milk\n• ⅓ cup of shredded cheese of choice\n• Salt\n• Cooked Broccoli Florets (optional)", recipe: "1) In a microwave safe mug, combine macaroni, water, and a pinch of salt. Microwave for 3 minutes, or until pasta is almost fully cooked through.\n\n2) Take out the mug from the microwave, and add in milk and cheese, then stir.\n\n3) Microwave the mug for another minute.\n\n4) Take out, stir, and add some more salt and pepper for flavor!\n\n5) For a balanced meal, add in some cooked broccoli.", time: "10-15 minutes", desc: "This healthier and tastier alternative to the instant Kraft mac and cheese (seriously... the orange powder just seems a little sketchy) only requires 4 ingredients and less than 5 minutes to make!") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = Meal(name: "Loaded 'Baked' Sweet Potato", photo: UIImage(named: "Loaded _Baked_ Sweet Potato"), vegan: true, veg: true, ingrediants: "• 1 medium sweet potato, washed and dried\n• 2 tablespoon of cheese/vegan cheese\n• ¼ cup of cooked broccoli florets\n• Milk of choice\n• 2 slices of chopped turkey deli slices [optional]", recipe: "1) In a microwave-safe plate, poke holes in a sweet potato with a fork. Then, wrap in a wet paper towel. \n\n2) Microwave for 7 minutes.\n\n3) Take the sweet potato out, then carve out the middle and put it into another bowl.\n\n4) Mash the scooped out sweet potato, add a teaspoon of milk, and mix in the cooked broccoli florets, and the turkey meat if you're using it,  and some salt and pepper.\n\n5) Place the mashed sweet potato mixture back into the carved out sweet potato, and top with cheese.\n\n6) Microwave the entire sweet potato for 1 min, or until the cheese is melted.\n\n7) Top the sweet potato with some extra cheese if desired!", time:"15-20 minutes", desc:"Sweet potatoes are an excellent source of beta-carotene and vitamin A, not to mention high in fiber and very filling. This recipe will keep you full and energized!") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal4 = Meal(name: "PB, Fruit, and Granola Wrap", photo: UIImage(named: "PB, Fruit, and Granola Wrap"), vegan: true, veg: true, ingrediants: "• 1 whole-grain wrap\n• 1 banana\n• ½ a chopped  apple\n• 1 tablespoon peanut butter\n• 2 tablespoons granola or cereal of choice\n• 1 tablespoon of agave or honey (optional)", recipe: "1) On a wrap, spread a generous amount of peanut butter\n\n2) Add in a whole banana, and top with chopped apple and granola/cereal of choice\n\n3) Fold in the sides and wrap the tortilla around the banana to keep it compact.\n\n4) Grab your food and head off to class!", time: "5-10 minutes", desc: "Sweet stuff for lunch – why not? This whole-grain wrap is filled with natural sugars from fruit and healthy fats and protein from peanut butter.") else {
            fatalError("Unable to instantiate meal4")
        }
        
        guard let meal5 = Meal(name: "Avocado-Tuna Salad", photo: UIImage(named: "Avo-Tuna Salad"), vegan: false, veg: false, ingrediants: "• 1 can of canned tuna\n• ½ medium avocado\n• 1 teaspoon lemon juice (optional)\n• 1 tablespoon of celery, finely chopped (optional)\n• Salt and pepper to taste\n• 1 teaspoon onion powder", recipe: "1) In a medium sized bowl, mash avocado and mix in  lemon juice.\n\n2) Add drained tuna, salt, pepper, and chopped celery and mix well.\n\n3) Add salt, pepper and onion powder to taste.\n\n4) Eat with lettuce leaves (lettuce wrap), as a sandwich filling, or on top of some crackers!", time: "15-20 minutes", desc: "Trust me – don’t knock it till you try it! This variation of tuna salad pairs avocados (high in healthy monounsaturated fat) and Tuna (high quality protein, low fat), resulting in a creamy dip/spread!") else {
            fatalError("Unable to instantiate meal5")
        }
        
        guard let meal6 = Meal(name: "Spicy Chickpea Tacos", photo: UIImage(named: "Spicy Chickpea Tacos"), vegan: true, veg: true, ingrediants: "• 1 15 oz can of chickpeas, drained and dried\n• taco seasoning\n• 2 whole grain tortillas\n• ½ an avocado, cubed", recipe: "1) In a bowl, mix together chickpeas and 1 tablespoon of taco seasoning.\n\n2) Microwave chickpeas on a paper towel for 7 minutes, or until slightly cracked and chewy.\n\n3) On another microwave-safe plate, heat up 2 tortillas for 1 minute.\n\n4) Assemble “tacos” by layering each tortilla with chickpea mixture and cubed avocados.\n\n5) Keep any leftover chickpeas for later!", time: "10-15 minutes", desc: "High in protein, vitamins, minerals, and fiber, these crispy chickpeas are so addictive! Paired with some tortillas, avocado, and salsa, it makes for a delicious meat-free taco.") else {
            fatalError("Unable to instantiate meal6")
        }
        
        guard let meal7 = Meal(name: "Savory Bread Pudding", photo: UIImage(named: "Savory Bread Pudding"), vegan: false, veg: false, ingrediants: "• 1 egg\n• 1 slice of wholegrain bread, cubed\n• 3 tablespoons of milk\n• 2 tablespoons of shredded cheese\n• 1 slice of ham/turkey, cubed (optional)", recipe: "1) In a bowl, beat together egg and milk until whisked. Then, add in shredded cheese and mix.\n\n2) In a microwave safe bowl/mug, add in cubes of bread, and top with ham and tomato.\n\n3) Pour the egg mixture on top of the bread, ensuring that each piece is well coated.\n\n4) Microwave for around 1 minute 30 seconds.\n\n5) Enjoy!", time: "10-15 minutes", desc: "This savory take on french toast pairs together simple pantry ingredients in a fun way while providing a balanced meal of carbs, dairy, and protein.") else {
            fatalError("Unable to instantiate meal7")
        }
        
        guard let meal8 = Meal(name: "Bean and Cheese Burrito", photo: UIImage(named: "Bean and Cheese Burrito"), vegan: true, veg: true, ingrediants: "• 1 can of refried beans\n• 1 cup of shredded cheese or vegan cheese\n• 4 wholegrain tortillas\n• 1 tablespoon of salsa\n• OPTIONAL: 1 packet of microwavable quinoa", recipe: "1) On a tortilla, add on ¼ can of refried beans (around a ½ cup) and spread evenly around the center.\n\n2) Add on 1 serving of microwavable quinoa and ⅓ cup of shredded cheese.\n\n3) Fold burrito tightly by bringing in the left and right sides, then rolling away from you.\n\n4) Wrap the burrito in a damp cooking sheet and microwave for around 1-2 minutes, flipping halfway.\n\n5) To store in the freezer, wrap the burrito with parchment paper. To heat up,  wrap the burrito in a damp cooking sheet and microwave for around 2-3 minutes, flipping halfway.\n\n6) Top with some salsa and enjoy!", time: "10-15 minutes", desc: "While refried beans are sometimes frowned upon, they actually provide a lot of protein and many micronutrients. Choosing low-sodium and low-fat alternatives is a great option. Not to mention, pairing beans with a source of vitamin C, like tomato salsa, can boost iron absorption!") else {
            fatalError("Unable to instantiate meal8")
        }
        
        guard let meal9 = Meal(name: "2-Minute Pizza", photo: UIImage(named: "2-min _Pizza_ updated"), vegan: true, veg: true, ingrediants: "• 2 slices of bread/bagel of choice\n• ⅓ cup of shredded cheese/vegan cheese\n• 2 heaped tablespoons marinara sauce\n• Optional pizza toppings: mushrooms, onions, bell peppers, pepperoni, shredded chicken, turkey etc. Maybe even sliced pineapples!", recipe: "1) Get two slices of bread/one bagel sliced in half.\n\n2) With the cut-up side face up, spread on the desired amount of marinara sauce.\n\n3) Sprinkle on the shredded cheese, and add any toppings; I used bell peppers, mushrooms, and onions.\n\n4) Microwave for around 45 seconds or around cheese is melted.\n\n5) Take out the microwave, then  sprinkle it with some salt, pepper, and oregano (optional) and enjoy!", time: "5-10 minutes", desc: "These definitely won’t measure up against your town’s best slice, but this 2 min alternative will help satisfy your cravings. What’s great about this recipe is that you have the freedom to customize and add as much fresh foods as you want!") else {
            fatalError("Unable to instantiate meal9")
        }
        
        guard let meal10 = Meal(name: "5-Minute Burrito Bowl", photo: UIImage(named: "5-min Burrito Bowl"), vegan: true, veg: true, ingrediants: "• 1 packet microwavable quinoa packet (brown or white rice works too)\n• 2 tablespoon of canned corn\n• ¼ of a medium avocado\n• 2 tablespoon of canned black beans\n• 1 tablespoon of your favorite salsa", recipe: "1) Prepare microwavable quinoa using instructions on the packet.\n\n2) Chop ¼ of a medium avocado into bite-sized pieces.\n\n3) In a medium sized bowl, add in the quinoa, then top with canned corn, black beans, salsa and any other toppings you desire!\n\n4) Mix well and enjoy!", time: "5-10 minutes", desc: "This nutrient-packed burrito bowl will leave you full, happy, and wanting more. Using quinoa instead of normal rice makes this dish gluten-free, higher in protein, as well as much more nutrient-dense!") else {
            fatalError("Unable to instantiate meal10")
        }
        
        guard let meal11 = Meal(name: "Mug Omelette", photo: UIImage(named: "Mug Omelette"), vegan: false, veg: true, ingrediants: "• 2 large eggs\n• 1 tablespoon of milk\n• 1 tablespoon of shredded cheese\n• ½ cup of of frozen spinach, thawed and drained\n• Salt and pepper to taste", recipe: "1) Spray microwave-safe mug or bowl with non-stick cooking spray.\n\n2) Put the thawed and drained frozen or fresh spinach into the mug.\n\n3) Crack the 2 eggs, and add in the milk and shredded cheese before stirring thoroughly.\n\n4) Top with a sprinkle of salt and pepper.\n\n5) Microwave for 2:30 minutes, checking and stirring after the first minute, and every 30 seconds after that.*\n\n *NOTE: microwave time may depend on the watts of your microwave. Be sure to check periodically! ", time: "5-10 minutes", desc: "You can never get tired of eggs! This recipe is foolproof – and results in a delicious, fluffy, nutritious dish.") else {
        fatalError("Unable to instantiate meal8")
        }
        
        guard let meal12 = Meal(name: "Mason Jar Salad", photo: UIImage(named: "Mason Jar Salad"), vegan: true, veg: true, ingrediants: "• Black beans\n• Canned corn\n• Salad leaves\n• Salsa\n• Avocado\n• Spicy chickpeas (from spicy chickpea tacos)", recipe: "1) In a mason jar, layer all the ingredients together. If packing for lunch, it is most ideal to start with dressing on the bottom, then adding proteins/grains (quinoa, chickpeas, chicken), everything except salad leaves, then salad leaves at the very top.\n\n2) For this mason jar salad, I went with a mexican flair: dressing, black beans, chickpeas, canned corn, avocado, salad leaves, then some salsa!", time: "5-10 minutes", desc: "This mix-and-match salad allows you to put all of your favorite greens, grains, and proteins into an easy to-go lunch!") else {
        fatalError("Unable to instantiate meal8")
        }

        
        meals += [meal1, meal2, meal3, meal4, meal5, meal6, meal7, meal8, meal9, meal10, meal11, meal12]
    }
}
