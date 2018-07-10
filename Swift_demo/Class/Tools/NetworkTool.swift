//
//  NetworkTool.swift
//  Swift_demo
//
//  Created by xuqidong on 2018/7/10.
//  Copyright © 2018 xuqidong. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol NetworkToolProtocol {
    // MARK
    static func loadFeeds(completionHandler: @escaping (_ response: NSDictionary) -> ())
}

extension NetworkToolProtocol {
    
    static func loadFeeds(completionHandler: @escaping (_ response: NSDictionary) -> ()) {
        let url = "http://0.0.0.0:8181"
        Alamofire.request(url).responseJSON { (response) in
            guard response.result.isSuccess else { return }
            if let value = response.result.value {
                completionHandler(value as! NSDictionary)
            }
        }
    }
    
}

struct NetworkTool: NetworkToolProtocol {}
