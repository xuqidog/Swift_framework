//
//  FirstViewController.swift
//  Swift_demo
//
//  Created by xuntou-2 on 2018/7/5.
//  Copyright © 2018 xuntou-2. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let lbl = UILabel()
        lbl.text = "版本号：" + returnAppShortVersion() + "\n" +
            "BundleId：" + returnAppVersion() + "\n" +
            "应用名：" + returnAppName() + "\n" +
            "系统名：" + returnDeviceName() + "\n" +
            "UUID：" + returnDeviceUUID() + "\n" +
            "设备型号：" + returnDeviceModel() + "\n" +
            "设备详情：" + returnDeviceModelDetail() + "\n" +
            "系统版本号：" + returnDeviceSystemVersion()
        lbl.textAlignment = .center
        lbl.textColor = UIColor.red
        lbl.textAlignment = NSTextAlignment.left
        lbl.numberOfLines = 0
        self.view.addSubview(lbl)
        lbl.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self.view)
            make.left.equalTo(self.view).offset(10)
            make.right.equalTo(self.view).offset(-10)
        }
        
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
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
