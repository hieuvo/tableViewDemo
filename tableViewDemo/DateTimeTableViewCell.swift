//
//  File.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

class DateTimeTableViewCell: HVTableViewCell {
    var titleLabel = UILabel()
    var modelFilter: DateTimeFilter!
    
    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)}
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLabel.text = "datetime"
        titleLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        addSubview(titleLabel)
    }
    
    override func setModel(model: Any) {
        modelFilter = model as! DateTimeFilter
    }
}