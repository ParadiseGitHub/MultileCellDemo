//
//  ViewController.swift
//  MultipleCellDemo
//
//  Created by 蒋明月 on 2018/1/24.
//  Copyright © 2018年 paradise. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class Profile {
    var fullName: String?
    var pictureUrl: String?
    var email: String?
    var about: String?
    var friends = [Friend]()
    var profileAttributes = [Attribute]()
}
class Friend {
    var name: String?
    var pictureUrl: String?
}
class Attribute {
    var key: String?
    var value: String?
}

