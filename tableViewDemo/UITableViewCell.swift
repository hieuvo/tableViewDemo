//
//  File.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

extension UITableViewCell {
    static var cellIdentifier: String {
        return className
    }
    
    class func dequeueReusableCellFromTableView(tableView: UITableView, forIndexPath indexPath: NSIndexPath) -> Self {
        return dequeueReusableCellFromTableView(tableView, forIndexPath: indexPath, type: self)
    }
    
    private class func dequeueReusableCellFromTableView<T: UITableViewCell>(tableView: UITableView, forIndexPath indexPath: NSIndexPath, type: T.Type) -> T {
        return tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier, forIndexPath: indexPath) as! T
    }
    
    class func registerClassToTableView(tableView: UITableView) {
        tableView.registerClass(self, forCellReuseIdentifier: self.cellIdentifier)
    }
    
    func getCellHeight() -> CGFloat {
        return CGFloat(50)
    }
}