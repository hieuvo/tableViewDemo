//
//  HVTableView.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit


class Utility {
    class func classNameAsString(obj: Any) -> String {
        return String(obj.self).componentsSeparatedByString(".").last!
    }
}

protocol HVTableViewProtocol {
    func didSelectRow(tableView: UITableView, indexPath: NSIndexPath)
    func getCellClassFromModel(model: AnyObject) -> String
}

class HVTableView: UITableView {
    var hvDelegate: HVTableViewProtocol!
    var modelsData: [Any] = []
    var cellForModelMapping: [String: HVTableViewCell.Type] = [:]
    var heightForCells: [Int: CGFloat] = [:]
    
    func cellRegisterModel<T: HVTableViewCell>(cellType: T.Type, model: Any) {
        cellForModelMapping[Utility.classNameAsString(model)] = cellType
    }
    
    func setModels(models: [Any]) {
        modelsData = models
    }
}

extension HVTableView: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelsData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let model = modelsData[indexPath.row]
        let cellClass = cellForModelMapping[Utility.classNameAsString(model.dynamicType)]
        let cell = cellClass!.dequeueReusableCellFromTableView(tableView, forIndexPath: indexPath)
        
        cell.setModel(model)
        cell.setupCell()
        heightForCells[indexPath.row] = cell.getCellHeight()
        
        return cell
    }
    
}

extension HVTableView: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if let height = heightForCells[indexPath.row] {
            return height
        }
        
        return CGFloat(50)
    }
}

