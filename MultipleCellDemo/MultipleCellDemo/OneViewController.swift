//
//  OneViewController.swift
//  MultipleCellDemo
//
//  Created by 蒋明月 on 2018/1/26.
//  Copyright © 2018年 paradise. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {
    
    var viewModel = ViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(CustomCell.nib, forCellReuseIdentifier: CustomCell.identifier)
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.allowsMultipleSelection = true
        tableView.dataSource = viewModel
        tableView.delegate = viewModel
        tableView.separatorStyle = .none
        
        viewModel.didToggleSelection = { [weak self] hasSelection in
            self?.nextButton.isEnabled = hasSelection
        }
        
    }
    
    @IBAction func next(_ sender: Any) {
        print(viewModel.selectedItems.map { $0.title })
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
