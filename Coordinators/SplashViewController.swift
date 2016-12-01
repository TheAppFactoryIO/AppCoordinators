//
//  SplashViewController.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 01/12/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    var didTapLogin: () -> () = {}
    var didTapRegister: () -> () = {}
    var didAppear: () -> () = {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.didAppear()
    }
    
    @IBAction func loginButtonTapped(sender: AnyObject) {
        self.didTapLogin()
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        self.didTapRegister()
    }
}
