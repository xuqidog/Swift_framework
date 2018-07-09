//
//  KKTools.swift
//  Swift_demo
//
//  Created by xuntou-2 on 2018/7/5.
//  Copyright © 2018 xuntou-2. All rights reserved.
//

import UIKit

/// 返回包名
func returnAppName() -> String {
    return Bundle.main.infoDictionary!["CFBundleDisplayName"] as! String
}

/// 返回App版本号
func returnAppVersion() -> String {
    return Bundle.main.infoDictionary!["CFBundleVersion"] as! String
}

/// 返回App版本号
func returnAppShortVersion() -> String {
    return Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
}
