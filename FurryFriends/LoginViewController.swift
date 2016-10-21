//
//  LoginViewController.swift
//  FurryFriends
//
//  Created by Sophia KC on 18/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func didTapLogin(_ sender: AnyObject) {
        // Do login stuff
        
        activityIndicator.startAnimating()
        
        if emailField.text == "eiffeltower" && passwordField.text == "paris" {
            // if correct credentials
        
            delay(2, closure: {
                self.activityIndicator.stopAnimating()
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            })
        
        } else {
            delay(2, closure: {
                self.activityIndicator.stopAnimating()
                let alertController = UIAlertController(title: "Wrong credentials", message: "Did you forget your password?", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action:UIAlertAction) in
                    
                })
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
                
            })
        }
    }
}

