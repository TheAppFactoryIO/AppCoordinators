//
//  SplashCoordinator.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 01/12/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

class SplashCoordinator: NSObject {
    
    var navigationController: UINavigationController?
    var childCoordinators: NSMutableArray?
    
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {
        let splashViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("SplashViewController") as! SplashViewController
        splashViewController.didTapLogin = showLogin
        splashViewController.didTapRegister = showRegister
        splashViewController.didAppear = cleanUp
        self.navigationController?.pushViewController(splashViewController, animated: false)
    }
    
    func showLogin() {
        let loginCoordinator = LoginCoordinator(navigationController: self.navigationController!)
        loginCoordinator.start()
        self.childCoordinators?.addObject(loginCoordinator)
    }
    
    func showRegister() {
        let registerCoordinator = RegisterCoordinator(navigationController: self.navigationController!)
        registerCoordinator.start()
        self.childCoordinators?.addObject(registerCoordinator)
    }
    
    func cleanUp() {
        if let childCoordinators = self.childCoordinators {
            childCoordinators.removeLastObject()
        }
    }
}
