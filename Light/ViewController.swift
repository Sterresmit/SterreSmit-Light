//
//  ViewController.swift
//  Light
//
//  Created by Sterre Smit on 02/11/2018.
//  Copyright © 2018 Sterre Smit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // when button is pressed, call functions to change colours
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        setNeedsStatusBarAppearanceUpdate()
        updateUI()
    }
    // switch between white and black
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    // changing colour of the statusbar to make it visible when light is on and off
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if lightOn == true {
            return UIStatusBarStyle.default
        } else {
            return UIStatusBarStyle.lightContent
        }
    }
    
}






