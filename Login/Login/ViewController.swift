//
//  ViewController.swift
//  Login
//
//  Created by Doan Le Thieu on 3/21/18.
//  Copyright © 2018 Doan Le Thieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot User Name"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: sender)
    }
    
}

