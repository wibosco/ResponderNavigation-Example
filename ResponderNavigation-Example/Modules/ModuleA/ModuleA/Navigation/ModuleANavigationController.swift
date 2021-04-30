//
//  ModuleANavigationController.swift
//  ModuleA
//
//  Created by William Boles on 30/04/2021.
//

import UIKit

public protocol ModuleANavigation {
    func navigateToSecond()
}

public class ModuleANavigationController: UINavigationController {
    
}

extension ModuleANavigationController: ModuleANavigation {
    public func navigateToSecond() {
        let viewController = ModuleASecondViewController.instantiateFromStoryboard()
        pushViewController(viewController, animated: true)
    }
}
