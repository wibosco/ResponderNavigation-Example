//
//  UIStoryboard+Instantiate.swift
//  Common
//
//  Created by William Boles on 30/04/2021.
//

import UIKit

public extension UIViewController {
    static func instantiateFromStoryboard(_ storyboard: String, bundle: Bundle, identifier: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: identifier)
        
        return viewController
    }
}
