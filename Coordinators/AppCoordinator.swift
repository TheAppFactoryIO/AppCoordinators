//
//  AppCoordinator.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 01/12/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

class AppCoordinator: NSObject {
    var navigationController: UINavigationController?
    var childCoordinators: NSMutableArray?
    
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        let loggedIn = userDefaults.boolForKey("loggedIn")
        
        if loggedIn {
            self.showContent()
        } else {
            self.showSplash()
        }
    }
    
    func showSplash() {
        let splashCoordinator = SplashCoordinator(navigationController: self.navigationController!)
        splashCoordinator.start()
        self.childCoordinators?.addObject(splashCoordinator)
    }
    
    func showContent() {
        let contentCoordinator = ContentCoordinator(navigationController: self.navigationController!)
        contentCoordinator.start()
        self.childCoordinators?.addObject(contentCoordinator)
    }
}
