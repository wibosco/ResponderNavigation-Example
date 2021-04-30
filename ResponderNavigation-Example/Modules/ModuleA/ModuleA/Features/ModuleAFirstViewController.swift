//
//  ModuleAViewController.swift
//  ModuleA
//
//  Created by William Boles on 30/04/2021.
//

import UIKit
import AppNavigation

public class ModuleAFirstViewController: UIViewController {

    @IBOutlet weak var intermoduleButton: UIButton!
    @IBOutlet weak var intramoduleButton: UIButton!
    
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
        navigationResponder?.navigateToModuleB()
    }
    
    @IBAction func intramoduleButtonPressed(_ sender: Any) {
        let navigationResponder: ModuleANavigation? = self.findConformingResponder()
        navigationResponder?.navigateToSecond()
    }
}
