//
//  SliderTableViewCell.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

class SliderTableViewCell: HVTableViewCell {
    var titleLabel = UILabel()
    var slider = UISlider()
    var modelFilter: SliderFilter!
    
    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)}
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func setModel(model: Any) {
        modelFilter = model as! SliderFilter
    }
    
    override func setupCell() {
        titleLabel.text = "slider"
        titleLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        slider.frame = CGRect(x: 100, y: 30, width: 150, height: 50)
        addSubview(titleLabel)
        addSubview(slider)
    }
    
    override func getCellHeight() -> CGFloat {
        return CGFloat(80)
    }
}