//
//  ModuleBSecondViewController.swift
//  ModuleB
//
//  Created by William Boles on 30/04/2021.
//

import UIKit
import Common

public class ModuleBSecondViewController: UIViewController {
    
    // MARK: - Instantiate
    
    static func instantiateFromStoryboard() -> UIViewController {
        let bundle = Bundle(for: ModuleBSecondViewController.self)
        let viewController = ModuleBSecondViewController.instantiateFromStoryboard("ModuleB", bundle: bundle, identifier: "SecondViewController")
        
        return viewController
    }
}
