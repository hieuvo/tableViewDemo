//
//  UIView.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

extension UIView {
    static var className: String {
        let classString = NSStringFromClass(self)
        let components = classString.componentsSeparatedByString(".")
        assert(components.count > 0, "Failed extract class name from \(classString)")
        return components.last!
    }
}