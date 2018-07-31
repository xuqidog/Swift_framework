//
//  NewsListModel.swift
//  Swift_demo
//
//  Created by xuntou-2 on 2018/7/30.
//  Copyright © 2018 xuntou-2. All rights reserved.
//

import UIKit
import HandyJSON

class NewsListModel:HandyJSON  {
    var content:String?
    var cellHeight:CGFloat?
    var date: Date?
    var decimal: NSDecimalNumber?
    var url: URL?
    var data: Data?
    var color: UIColor?
    
    func map(){
        cellHeight = returnStrHeight(str: content!, strWith: kkScreenWidth-30, strFont: kkSystemFont(16))+45
    }
    
    func mapping(mapper: HelpingMapper) {
        mapper <<<
            date <-- CustomDateFormatTransform(formatString: "yyyy-MM-dd")
        
        mapper <<<
            decimal <-- NSDecimalNumberTransform()
        
        mapper <<<
            url <-- URLTransform(shouldEncodeURLString: false)
        
        mapper <<<
            data <-- DataTransform()
        
        mapper <<<
            color <-- HexColorTransform()
    }
    
    required init() {}

}
