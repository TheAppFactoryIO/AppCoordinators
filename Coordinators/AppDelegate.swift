//
//  AppDelegate.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 30/11/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let navigationController = UINavigationController()
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.rootViewController = navigationController
        
        self.appCoordinator = AppCoordinator(navigationController: navigationController)
        self.appCoordinator?.start()
        
        return true
    }
}
