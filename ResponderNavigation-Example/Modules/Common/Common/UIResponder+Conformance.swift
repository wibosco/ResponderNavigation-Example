//
//  UIResponder+Conformance.swift
//  Common
//
//  Created by William Boles on 30/04/2021.
//

import UIKit


public extension UIResponder {
    func findConformingResponder<T>() -> T? {
        assert(Thread.isMainThread)
        return self as? T ?? next?.findConformingResponder()
    }
}
