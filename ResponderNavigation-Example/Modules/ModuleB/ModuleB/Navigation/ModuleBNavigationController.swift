//
//  ModuleANavigationController.swift
//  ModuleA
//
//  Created by William Boles on 30/04/2021.
//

import UIKit

public class ModuleBNavigationController: UINavigationController {
    public func showFirst() {
        let viewController = ModuleBFirstViewController.instantiateFromStoryboard()
        pushViewController(viewController, animated: true)
    }
    
    public func showSecond() {
        let viewController = ModuleBSecondViewController.instantiateFromStoryboard()
        pushViewController(viewController, animated: true)
    }
}
