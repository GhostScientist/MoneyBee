//
//  ViewController.swift
//  MoneyBee
//
//  Created by Dakota Kim on 4/6/18.
//  Copyright © 2018 theghost. All rights reserved.
//

import UIKit
import Firebase
import SwipeCellKit
import ChameleonFramework

class WelcomeViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }
    
    func setupUI() {
        self.view.backgroundColor = GradientColor(UIGradientStyle.topToBottom, frame: self.view.frame, colors: [UIColor.flatYellow, UIColor.flatBlack])
        loginButton.backgroundColor = UIColor.flatYellow
        registerButton.backgroundColor = UIColor.flatYellow
        loginButton.layer.cornerRadius = 12.5
        loginButton.clipsToBounds = true
        registerButton.layer.cornerRadius = 12.5
        registerButton.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToRegister", sender: self)
    }
}

