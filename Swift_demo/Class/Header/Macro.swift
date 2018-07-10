//
//  Macro.swift
//  Swift_demo
//
//  Created by xuqidong on 2018/7/5.
//  Copyright © 2018 xuqidong. All rights reserved.
//

import Foundation
import UIKit

let kkScreenHeight = UIScreen.main.bounds.size.height
let kkScreenWidth = UIScreen.main.bounds.size.width
let kkNav_H = 44.0 /// 导航高度
let kkStatusBar_H = UIApplication.shared.statusBarFrame.size.height /// 顶部状态栏的高度
let kkTabBar_H = (kkStatusBar_H==20 ? 49 : 83) /// tabbar的整体高度
let kkTabBar_Bottom_H = (kkStatusBar_H==20 ? 0 : 34) /// tabbar底部高度
let kkNav_All_H = (CGFloat(kkNav_H) + CGFloat(kkStatusBar_H)) /// 整个导航的高度

