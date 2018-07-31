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
        button.setTitleColor(UIColor.white, for: .selected)
        button.setBackgroundImage(UIImage.imageWithColor(color: UIColor.lightGray), for: .normal)
        button.setBackgroundImage(UIImage.imageWithColor(color: UIColor.gray), for: .selected)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        return button
    }
    
    func didSelectButton(at index: Int) {
        
    }
    
    func willTransition(to index: Int) {
        
    }
    
    func didTransition(to index: Int) {
        
    }
    
    func heightForHeader() -> CGFloat {
        return 60
    }
    
    func backgroundColorForHeader() -> UIColor {
        return UIColor.lightGray
    }
    
    func heightForIndicator() -> CGFloat {
        return 3
    }
    
    func colorForIndicator(at index: Int) -> UIColor {
        return UIColor.blue
    }
    
    func shouldShowIndicator() -> Bool {
        return false
    }
    
    func widthForButton(at index: Int) -> CGFloat {
        return 80
    }
    
    func widthForIndicator(at index: Int) -> CGFloat {
        return 50
    }
    
    
}
