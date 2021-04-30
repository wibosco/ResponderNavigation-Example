//
//  AppNavigation.swift
//  ResponderNavigation-Example
//
//  Created by William Boles on 30/04/2021.
//

import UIKit
import AppNavigation

public class AppTabBarController: UITabBarController { }

extension UITabBarController: AppNavigation {
    public func navigateToModuleA() {
        selectedIndex = 0
    }
    
    public func navigateToModuleB() {
        selectedIndex = 1
    }
}
