//
//  AllNewsViewController.swift
//  Swift_demo
//
//  Created by xuntou-2 on 2018/7/31.
//  Copyright © 2018 xuntou-2. All rights reserved.
//

import UIKit

class AllNewsViewController: BaseViewController, LZViewPagerDelegate, LZViewPagerDataSource {

    @IBOutlet weak var viewPager: LZViewPager!
    private var subControllers:[UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewPager.dataSource = self
        viewPager.delegate = self
        viewPager.hostController = self
        let vc1 = NewsListController()
        vc1.title = "title1"
        let vc2 = FirstViewController()
        vc2.title = "title2"
        let vc3 = FourthViewController()
        vc3.title = "title3"
        subControllers = [vc1, vc2, vc3]
        viewPager.reload()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension AllNewsViewController {
    func numberOfItems() -> Int {
        return self.subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        return subControllers[index]
    }
    
    func button(at index: Int) -> UIButton {
        let button = UIButton()
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        return button
    }
}
