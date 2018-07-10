//
//  MainViewController.swift
//  Swift_demo
//
//  Created by xuqidong on 2018/7/5.
//  Copyright © 2018 xuqidong. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    /// 初始化 tabbar
    func initTabbar() -> UITabBarController {
        let tabBarController = ESTabBarController()
        let v1 = addNav(childVC: FirstViewController(), title: "Home")
        let v2 = addNav(childVC: SecondViewController(), title: "Find")
        let v3 = addNav(childVC: FirstViewController(), title: "Photo")
        let v4 = addNav(childVC: FirstViewController(), title: "Favor")
        let v5 = addNav(childVC: FourthViewController(), title: "Me")
        
//        v1.tabBarItem = ESTabBarItem.init(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
//        v2.tabBarItem = ESTabBarItem.init(title: "Find", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
//        v3.tabBarItem = ESTabBarItem.init(title: "Photo", image: UIImage(named: "photo"), selectedImage: UIImage(named: "photo_1"))
//        v4.tabBarItem = ESTabBarItem.init(title: "Favor", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
//        v5.tabBarItem = ESTabBarItem.init(title: "Me", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
//
//        if let tabBarItem = v1.tabBarItem as? ESTabBarItem {
//            tabBarItem.badgeValue = "New"
//        }
//        if let tabBarItem = v2.tabBarItem as? ESTabBarItem {
//            tabBarItem.badgeValue = "99+"
//        }
//        if let tabBarItem = v3.tabBarItem as? ESTabBarItem {
//            tabBarItem.badgeValue = "1"
//            tabBarItem.badgeColor = UIColor.blue
//        }
//        if let tabBarItem = v4.tabBarItem as? ESTabBarItem {
//            tabBarItem.badgeValue = ""
//        }
//        if let tabBarItem = v5.tabBarItem as? ESTabBarItem {
//            tabBarItem.badgeValue = nil
//        }
        
        v1.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        v2.tabBarItem = UITabBarItem.init(title: "Find", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        v3.tabBarItem = UITabBarItem.init(title: "Photo", image: UIImage(named: "photo"), selectedImage: UIImage(named: "photo_1"))
        v4.tabBarItem = UITabBarItem.init(title: "Favor", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        v5.tabBarItem = UITabBarItem.init(title: "Me", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        
        tabBarController.tabBar.shadowImage = nil
        
        tabBarController.viewControllers = [v1, v2, v3, v4, v5]
        
        return tabBarController
    }
    
    /// 添加导航
    func addNav(childVC: UIViewController, title: String) -> UINavigationController {
        let nav = UINavigationController(rootViewController: childVC)
        nav.navigationBar.tintColor = UIColor.black
        let dict:NSDictionary = [NSAttributedStringKey.backgroundColor: UIColor.white,
                                 NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)]
        nav.navigationBar.titleTextAttributes = dict as? [NSAttributedStringKey : Any]
        childVC.title = title
        return nav
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
