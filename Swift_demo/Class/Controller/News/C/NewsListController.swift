//
//  NewsListController.swift
//  Swift_demo
//
//  Created by xuntou-2 on 2018/7/30.
//  Copyright © 2018 xuntou-2. All rights reserved.
//

import UIKit

class NewsListController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    var Arr = [NewsListModel]()
    var mainTable:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arr:[String] = ["滑动删除必须实现的方法,为了提供表格显示性能，已创建完成的单元需重复使用",
                   "滑动删除必须实现的方法,为了提供表格显示性能，已创建完成的单元需重复使用,滑动删除必须实现的方法,为了提供表格显示性能，已创建完成的单元需重复使用",
                   "滑动删除必须实现的方法,为了提供表格显示性能，已创建完成的单元需重复使用",
                   "阿迪沙发上，M370要出新闻了",
                   "滑动删除必须实现的方法,为了提供表格显示性能，已创建完成的单元需重复使用"]
        
        for row in arr {
            let model = NewsListModel()
            model.content = row
            model.map()
            self.Arr.append(model)
        }
        
        self.initTable()
    }
    
    func initTable() {
        self.mainTable = UITableView(frame: self.view.frame, style: .plain)
        self.mainTable?.delegate = self
        self.mainTable?.dataSource = self
        let nib = UINib(nibName: "NewsListTableCell", bundle: nil)
        self.mainTable?.register(nib, forCellReuseIdentifier: "NewsListTableCell")
        self.view.addSubview(self.mainTable!)
    }
    
}

extension NewsListController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.Arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identify:String = "NewsListTableCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identify, for: indexPath) as! NewsListTableCell
        let model:NewsListModel = self.Arr[indexPath.row]
        cell.contentLab?.text = model.content
        cell.timeLab?.text = "2018-8-08"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let model:NewsListModel = self.Arr[indexPath.row]
        return model.cellHeight!
    }
}
