//
//  LoginViewController.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 01/12/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var didTapLogin: () -> () = {}
    var didDismiss: () -> () = {}

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        if(self.isMovingFromParentViewController() || self.isBeingDismissed()) {
            self.didDismiss()
        }
    }
    
    @IBAction func loginButtonTapped(sender: AnyObject) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setBool(true, forKey: "loggedIn")
        
        self.didTapLogin()
    }
}
