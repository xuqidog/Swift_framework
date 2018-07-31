//
//  NewsListTableCell.swift
//  Swift_demo
//
//  Created by xuntou-2 on 2018/7/30.
//  Copyright © 2018 xuntou-2. All rights reserved.
//

import UIKit

class NewsListTableCell: UITableViewCell {

    @IBOutlet weak var contentLab: UILabel!
    @IBOutlet weak var timeLab: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentLab.text = "test"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
