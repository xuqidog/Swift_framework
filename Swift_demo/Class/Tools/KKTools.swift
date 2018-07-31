//
//  KKTools.swift
//  Swift_demo
//
//  Created by xuqidong on 2018/7/5.
//  Copyright © 2018 xuqidong. All rights reserved.
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

/// 返回字符串的高度
func returnStrHeight(str: String, strWith: CGFloat, strFont: UIFont) -> CGFloat {
    var size = CGRect()
    let size2 = CGSize(width: strWith, height: CGFloat(MAXFLOAT))
    let dict = [NSAttributedStringKey.font:strFont]
    size = str.boundingRect(with: size2, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: dict, context: nil)
    return size.height
}
