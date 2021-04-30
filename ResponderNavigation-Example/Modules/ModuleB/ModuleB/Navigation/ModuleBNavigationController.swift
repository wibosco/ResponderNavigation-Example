//
//  ModuleANavigationController.swift
//  ModuleA
//
//  Created by William Boles on 30/04/2021.
//

import UIKit

public protocol ModuleBNavigation {
    func navigateToSecond()
}

public class ModuleBNavigationController: UINavigationController {
    
}

extension ModuleBNavigationController: ModuleBNavigation {
    public func navigateToSecond() {
        let viewController = ModuleBSecondViewController.instantiateFromStoryboard()
        pushViewController(viewController, animated: true)
    }
}
