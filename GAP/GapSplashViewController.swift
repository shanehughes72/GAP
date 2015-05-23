//
//  ViewController.swift
//  GAP
//
//  Created by Worship Arts on 5/23/15.
//  Copyright (c) 2015 Shane Hughes. All rights reserved.
//

import UIKit
import Parse

class GAPSplashViewController: UIViewController {
    

    

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBAction func didTapLogin(sender: UIButton) {
    }
    @IBAction func didTapSignup(sender: AnyObject) {
    }
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Double it")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        NSLog("Splash - viewDidAppear");
        checkStatus()

    }
  
    func checkStatus(){
        NSLog("Splash - checkStatus");
        //activityIndicator
        loginButton.hidden = true
        signupButton.hidden = true
        
        
        if let currentUser = PFUser.currentUser() {
            
            [self performSegueWithIdentifier:@"splashToMain" sender:self];
        } else {
            [activityIndicator stopAnimating];
            [loginButton setHidden:NO];
            [signupButton setHidden:NO];
        }
        
        }
        
 
    }//check status
    
   
/*
    - (void)checkStatus {
    
  
    
    if ([PFUser currentUser]) {
    [self performSegueWithIdentifier:@"splashToMain" sender:self];
    } else {
    [activityIndicator stopAnimating];
    [loginButton setHidden:NO];
    [signupButton setHidden:NO];
    }
    }


*/





















}//GAPSplashViewController

