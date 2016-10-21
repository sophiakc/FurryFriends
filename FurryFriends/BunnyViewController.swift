//
//  BunnyViewController.swift
//  FurryFriends
//
//  Created by Sophia KC on 18/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class BunnyViewController: UIViewController {

    @IBOutlet weak var bunnyImageView: UIImageView!
    
    var initialOrigin:CGPoint!
    
    
    
    @IBOutlet weak var responseField: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        responseField.text = "I've been waiting for you! 😎"
        
        initialOrigin = bunnyImageView.center
        
    }

    
    // Dismiss Keyboard
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(false)
    }
    
    
    // motion actions
    @IBAction func didPressUp(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) { 
            self.bunnyImageView.center.y = self.bunnyImageView.center.y - 20
        }
        
    }
    
    
    @IBAction func didPressDown(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) { 
            self.bunnyImageView.center.y = self.bunnyImageView.center.y + 20
        }
        
    }
    
    
    @IBAction func didPressRight(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) { 
            self.bunnyImageView.center.x = self.bunnyImageView.center.x + 20
        }
        
    }
    
    
    @IBAction func didPressLeft(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3) { 
            self.bunnyImageView.center.x = self.bunnyImageView.center.x - 20
        }
        
    }
    
    
    @IBAction func didPressShrink(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.transform = self.bunnyImageView.transform.scaledBy(x: 0.8, y: 0.8)
            
        }
    }

   
    @IBAction func didPressGrow(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.transform = self.bunnyImageView.transform.scaledBy(x: 1.2, y: 1.2)
        }
    }
    
    @IBAction func didRotateLeft(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.transform = self.bunnyImageView.transform.rotated(byDegrees: -20)
            
            // OR
            //  bunnyImageView.transform = bunnyImageView.transform.rotated(by: CGFloat(-20 * M_PI / 180)
        }
    }
    
    
    @IBAction func didRotateRight(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.transform = self.bunnyImageView.transform.rotated(byDegrees: +20)
        }
    }
    
        
    @IBAction func didPressReset(_ sender: UIButton) {
        
        bunnyImageView.center = initialOrigin
        
        UIView.animate(withDuration: 0.6) {
            self.bunnyImageView.transform = CGAffineTransform.identity
        }
        
        
    }
    
    
    @IBAction func didPressSend(_ sender: AnyObject) {
        responseField.text = ""
        
        activityIndicator.startAnimating()
        
        if inputField.text! == "Hey Bunny!" {
            delay(2, closure: {
                self.activityIndicator.stopAnimating()
                self.responseField.text = "Howdy Sophia! 😘"
            })
        } else if inputField.text == "Wanna eat?" {
            delay(2, closure: {
                self.activityIndicator.stopAnimating()
                self.responseField.text = "Oh yeah! I'm starving!"
            })

        } else if inputField.text == "Wanna bounce?" {
            delay(2, closure: {
                self.activityIndicator.stopAnimating()
                self.responseField.text = "Oh yeah! Full of energy!"
            })
            
        } else if inputField.text == "Bye" {
            delay(2, closure: {
                self.activityIndicator.stopAnimating()
                self.responseField.text = "Nooo don't leave!"
            })
        } else {
            delay(2, closure: {
                self.responseField.text = "I want to eat and bounce!"
            })
        }
        
        
    }
    

    
    
}
