//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Doan Le Thieu on 3/24/18.
//  Copyright © 2018 Doan Le Thieu. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] = {
        var breakfast = Meal(name: "Breakfast", food: [])
        var lunch = Meal(name: "Lunch", food: [])
        var dinner = Meal(name: "Dinner", food: [])
        
        let sandwich = Food(name: "Grilled Steelhead Trout Sandwich", description: "Pacific steelhead trout* with lettuce, tomato, and red onion.")
        let soup = Food(name: "Chicken Noodle Soup", description: "Delicious chicken simmered alongside yellow onions, carrots, celery, and bay leaves, chicken stock.")
        breakfast.food = [sandwich, soup]
        
        let pizza = Food(name: "Margherita Pizza", description: "Tomato sauce, fresh mozzarella, basil, and extra-virgin olive oil.")
        let spaghetti = Food(name: "Spaghetti and Meatballs", description: "Seasoned meatballs on top of freshly-made spaghetti. Served with a robust tomato sauce.")
        lunch.food = [pizza, spaghetti]
        
        let salad = Food(name: "Italian Salad", description: "Garlic, red onions, tomatoes, mushrooms, and olives on top of romaine lettuce.")
        let linguini = Food(name: "Pesto Linguini", description: "Stewed sliced beef with yellow onions and garlic in a vinegar-soy sauce. Served with steamed jasmine rice and sautéed vegetables.")
        dinner.food = [salad, linguini]

        return [breakfast, lunch, dinner]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        
        return meal.food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

}
