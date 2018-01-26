//
//  CustomCell.swift
//  MultipleCellDemo
//
//  Created by 蒋明月 on 2018/1/26.
//  Copyright © 2018年 paradise. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    var item: ViewModelItem? {
        didSet {
            titleLabel.text = item?.title
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
    }
    
}
