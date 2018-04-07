//
//  LoginViewController.swift
//  MoneyBee
//
//  Created by Dakota Kim on 4/6/18.
//  Copyright © 2018 theghost. All rights reserved.
//

import UIKit
import Firebase
import ChameleonFramework

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("login vc reached")
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        self.view.backgroundColor = UIColor.flatYellow
        emailField.layer.cornerRadius = 12.5
        emailField.clipsToBounds = true
        passwordField.layer.cornerRadius = 12.5
        passwordField.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enterButtonPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailField.text!, password: passwordField.text!) { (user, error) in
            if error != nil {
                print("There was an error. \(error)")
            } else {
                print("Valid login")
                self.performSegue(withIdentifier: "goToSuccess", sender: self)
            }
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
