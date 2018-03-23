//
//  ViewController.swift
//  AppEventCount
//
//  Created by Doan Le Thieu on 3/23/18.
//  Copyright © 2018 Doan Le Thieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var launchCount = 0
    var resignActiveCount = 0
    var enterBackgroundCount = 0
    var enterForegroundCount = 0
    var becomeActiveCount = 0
    var terminateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(launchCount) time(s)."
        willResignActiveLabel.text = "The app has resigned active \(resignActiveCount) time(s)."
        didEnterBackgroundLabel.text = "The app has entered background \(enterBackgroundCount) time(s)."
        willEnterForegroundLabel.text = "The app has entered foreground \(enterForegroundCount) time(s)."
        didBecomeActiveLabel.text = "The app has became active \(becomeActiveCount) time(s)."
        willTerminateLabel.text = "The app has terminated \(terminateCount) time(s)."
    }
}

