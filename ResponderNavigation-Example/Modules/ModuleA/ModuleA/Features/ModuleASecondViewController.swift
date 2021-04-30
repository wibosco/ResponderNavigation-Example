//
//  ModuleASecondViewController.swift
//  ModuleA
//
//  Created by William Boles on 30/04/2021.
//

import UIKit
import Common

public class ModuleASecondViewController: UIViewController {
    
    // MARK: - Instantiate
    
    static func instantiateFromStoryboard() -> UIViewController {
        let bundle = Bundle(for: ModuleASecondViewController.self)
        let viewController = ModuleASecondViewController.instantiateFromStoryboard("ModuleA", bundle: bundle, identifier: "SecondViewController")
        
        return viewController
    }
}
