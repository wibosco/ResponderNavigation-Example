//
//  AppNavigation.swift
//  ResponderNavigation-Example
//
//  Created by William Boles on 30/04/2021.
//

import UIKit
import AppNavigation
import ModuleA
import ModuleB

class AppTabBarController: UITabBarController {
    let moduleANavigationController: ModuleANavigationController = {
        let bundle = Bundle(identifier: "com.williamboles.ModuleA")
        let storyboard = UIStoryboard(name: "ModuleA", bundle: bundle)
        let navigationController = storyboard.instantiateInitialViewController() as! ModuleANavigationController
        navigationController.tabBarItem = UITabBarItem(title: "A", image: nil, tag: 1000)
        
        return navigationController
    }()
    
    let moduleBNavigationController: ModuleBNavigationController = {
        let bundle = Bundle(identifier: "com.williamboles.ModuleB")
        let storyboard = UIStoryboard(name: "ModuleB", bundle: bundle)
        let navigationController = storyboard.instantiateInitialViewController() as! ModuleBNavigationController
        navigationController.tabBarItem = UITabBarItem(title: "B", image: nil, tag: 1001)
        
        return navigationController
    }()
    
    // MARK: - View
    
    override open func viewDidLoad() {
        super.viewDidLoad()
    
        viewControllers = [moduleANavigationController, moduleBNavigationController]
    }
}

extension AppTabBarController: AppNavigation {
    
    // MARK: - Navigation
    
    public func navigate(to route: NavigationRoute) {
        switch route {
        case .moduleA(let screen):
            navigate(to: screen)
        case .moduleB(let screen):
            navigate(to: screen)
        }
    }
    
    private func navigate(to screen: ModuleAScreen) {
        selectedIndex = 0
        switch screen {
        case .first:
            moduleANavigationController.showFirst()
        case .second:
            moduleANavigationController.showSecond()
        }
    }
    
    private func navigate(to screen: ModuleBScreen) {
        selectedIndex = 1
        switch screen {
        case .first:
            moduleBNavigationController.showFirst()
        case .second:
            moduleBNavigationController.showSecond()
        }
    }
}
