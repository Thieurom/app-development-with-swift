//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Doan Le Thieu on 4/5/18.
//  Copyright © 2018 Doan Le Thieu. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    @IBOutlet weak var timeRemainingLabel: UILabel!
    
    var minutes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRemainingLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."
    }
}
