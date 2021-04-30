//
//  ModuleBViewController.swift
//  ModuleB
//
//  Created by William Boles on 30/04/2021.
//

import UIKit
import AppNavigation

public class ModuleBFirstViewController: UIViewController {
    @IBOutlet weak var intermoduleButton: UIButton!
    @IBOutlet weak var intramoduleButton: UIButton!
    
    // MARK: - Instantiate
    
    static func instantiateFromStoryboard() -> UIViewController {
        let bundle = Bundle(for: ModuleBFirstViewController.self)
        let viewController = ModuleBFirstViewController.instantiateFromStoryboard("ModuleB", bundle: bundle, identifier: "FirstViewController")
        
        return viewController
    }
    
    // MARK: - ViewLifecycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        intermoduleButton.layer.borderWidth = 1
        intermoduleButton.layer.borderColor = UIColor.systemBlue.cgColor
        
        intramoduleButton.layer.borderWidth = 1
        intramoduleButton.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    // MARK: - Actions
    
    @IBAction func intermoduleButtonPressed(_ sender: Any) {
        let navigationResponder: AppNavigation? = self.findConformingResponder()
        navigationResponder?.navigate(to: .moduleA(screen: .second))
    }
    
    @IBAction func intramoduleButtonPressed(_ sender: Any) {
        let navigationResponder: AppNavigation? = self.findConformingResponder()
        navigationResponder?.navigate(to: .moduleB(screen: .second))
    }
}
