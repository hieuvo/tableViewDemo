//
//  PickerTableViewCell.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

class PickerTableViewCell: HVTableViewCell {
    var titleLabel = UILabel()
    var picker = UIPickerView()
    var modelFilter: PickerFilter!
    
    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)}
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    }
    
    override func setModel(model: Any) {
        modelFilter = model as! PickerFilter
    }
    
    override func setupCell() {
        titleLabel.text = "picker"
        titleLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        picker.frame = CGRect(x: 200, y: 10, width: 150, height: 50)
        addSubview(titleLabel)
        addSubview(picker)
        
        picker.dataSource = self
        picker.delegate = self
    }
}

extension PickerTableViewCell: UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
}

extension PickerTableViewCell: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row + 2007);
    }
}