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
        loginViewController.didTapLogin = showContent
        loginViewController.didAppear = cleanUp
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
    
    func showContent() {
        let contentCoordinator = ContentCoordinator(navigationController: self.navigationController!)
        contentCoordinator.start()
        self.childCoordinators?.addObject(contentCoordinator)
    }
    
    func cleanUp() {
        if let childCoordinators = self.childCoordinators {
            childCoordinators.removeLastObject()
        }
    }
}
