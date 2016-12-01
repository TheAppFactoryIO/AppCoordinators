//
//  ContentCoordinator.swift
//  Coordinators
//
//  Created by Jon Raphael Danao on 01/12/2016.
//  Copyright © 2016 The App Factory. All rights reserved.
//

import UIKit

class ContentCoordinator: NSObject {
    
    var navigationController: UINavigationController?
    var childCoordinators: NSMutableArray?
    
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
        self.childCoordinators = []
    }

    func start() {
        let contentViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ContentViewController") as! ContentViewController
        self.navigationController?.pushViewController(contentViewController, animated: true)
    }
}
