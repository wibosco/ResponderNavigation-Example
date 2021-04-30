//
//  AppNavigation.swift
//  Navigation
//
//  Created by William Boles on 30/04/2021.
//

import Foundation

public enum NavigationRoute {
    case moduleA(screen: ModuleAScreen)
    case moduleB(screen: ModuleBScreen)
}

public enum ModuleAScreen {
    case first
    case second
}

public enum ModuleBScreen {
    case first
    case second
}

public protocol AppNavigation {
    func navigate(to route: NavigationRoute)
}
