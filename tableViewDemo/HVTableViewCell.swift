//
//  HVTableViewCell.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

class HVTableViewCell: UITableViewCell {
    func setModel(model: Any) {}
    func setupCell() {}
    
    override func getCellHeight() -> CGFloat {
        return CGFloat(50)
    }
}