//
//  LoginCoordinator.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 01/12/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

class LoginCoordinator: NSObject {

    var navigationController: UINavigationController?
    var childCoordinators: NSMutableArray?
    
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {
        let loginViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
}
