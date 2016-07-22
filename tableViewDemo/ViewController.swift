//
//  ViewController.swift
//  tableViewDemo
//
//  Created by hvmark on 7/21/16.
//  Copyright © 2016 hvmark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: FiltersTableView!

    override func viewDidLoad() {
        tableView.dataSource = tableView
        tableView.delegate = tableView
        
        tableView.registerClass(SliderTableViewCell.self, forCellReuseIdentifier: SliderTableViewCell.cellIdentifier)
        tableView.registerClass(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.cellIdentifier)
        tableView.registerClass(PickerTableViewCell.self, forCellReuseIdentifier: PickerTableViewCell.cellIdentifier)
        tableView.registerClass(DateTimeTableViewCell.self, forCellReuseIdentifier: DateTimeTableViewCell.cellIdentifier)
        
        tableView.cellRegisterModel(SliderTableViewCell.self, model: SliderFilter.self)
        tableView.cellRegisterModel(SwitchTableViewCell.self, model: SwitchFilter.self)
        tableView.cellRegisterModel(PickerTableViewCell.self, model: PickerFilter.self)
        tableView.cellRegisterModel(DateTimeTableViewCell.self, model: DateTimeFilter.self)
        
        tableView.setModels([SwitchFilter(), PickerFilter(), SliderFilter(), DateTimeFilter()])
        
        tableView.reloadData()
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

