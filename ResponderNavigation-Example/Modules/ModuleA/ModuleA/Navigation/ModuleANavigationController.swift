//
//  ModuleANavigationController.swift
//  ModuleA
//
//  Created by William Boles on 30/04/2021.
//

import UIKit
import AppNavigation

public class ModuleANavigationController: UINavigationController {
    public func showFirst() {
        let viewController = ModuleAFirstViewController.instantiateFromStoryboard()
        pushViewController(viewController, animated: true)
    }
    
    public func showSecond() {
        let viewController = ModuleASecondViewController.instantiateFromStoryboard()
        pushViewController(viewController, animated: true)
    }
}
