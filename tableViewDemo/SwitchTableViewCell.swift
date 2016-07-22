//
//  SwitchTableViewCell.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

class SwitchTableViewCell: HVTableViewCell {
    var titleLabel = UILabel()
    var switchButton = UISwitch()
    var modelFilter: SwitchFilter!
    
    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)}
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func setModel(model: Any) {
        modelFilter = model as! SwitchFilter
    }
    
    override func setupCell() {
        titleLabel.text = "switch"
        titleLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        switchButton.frame = CGRect(x: 300, y: 10, width: 50, height: 50)
        addSubview(titleLabel)
        addSubview(switchButton)
    }
}