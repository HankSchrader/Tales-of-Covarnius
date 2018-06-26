//
//  ReplaceControllerSegue.swift
//  Pilot
//
//  Created by Erik Mikac on 2/28/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import Foundation
class ReplaceControllerSegue: S{
    override func perform() {
        if let navigationController = sourceViewController.navigationController as UINavigationController? {
            var controllers = navigationController.viewControllers
            controllers.removeLast()
            controllers.append(destinationViewController)
            navigationController.setViewControllers(controllers, animated: true)
        }
    }
}
