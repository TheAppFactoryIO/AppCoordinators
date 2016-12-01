//
//  RegisterViewController.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 01/12/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
}
