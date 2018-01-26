//
//  ViewModel.swift
//  MultipleCellDemo
//
//  Created by 蒋明月 on 2018/1/26.
//  Copyright © 2018年 paradise. All rights reserved.
//

import Foundation
import UIKit

let dataArray = [Model(title: "Swift"),
                 Model(title: "Objective C"),
                 Model(title: "Java"),
                 Model(title: "Kotlin"),
                 Model(title: "Java Script"),
                 Model(title: "Python"),
                 Model(title: "Ruby"),
                 Model(title: "PHP"),
                 Model(title: "Perl"),
                 Model(title: "Go"),
                 Model(title: "C#"),
                 Model(title: "C++"),
                 Model(title: "Visual Basic"),
                 Model(title: "Pascal")]

class ViewModelItem {
    
    private var item: Model
    
    var isSelected = false
    
    var title: String {
        return item.title
    }
    
    init(item: Model) {
        self.item = item
    }
}

class ViewModel: NSObject {
    var items = [ViewModelItem]()
    
    override init() {
        super.init()
        items = dataArray.map { ViewModelItem(item: $0)}
    }
}

extension ViewModel: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        items[indexPath.row].isSelected = true
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        items[indexPath.row].isSelected = false
    }
}
