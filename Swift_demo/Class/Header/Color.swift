//
//  Color.swift
//  Swift_demo
//
//  Created by xuqidong on 2018/7/5.
//  Copyright © 2018 xuqidong. All rights reserved.
//

import Foundation
import UIKit

/// 颜色
func kkRGB(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor {
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}
/// 字体
func kkSystemFont(_ size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size)
}
/// 字体粗体
func kkBoldSystemFont(_ size: CGFloat) -> UIFont {
    return UIFont.boldSystemFont(ofSize: size)
}



/// 颜色
let Color_black = kkRGB(0, 0, 0) /// 黑色
let Colot_red = kkRGB(255, 0, 0) /// 红色


/// 字体
let FONT_15 = kkSystemFont(15.0)
let FONTB_20 = kkBoldSystemFont(20.0)








