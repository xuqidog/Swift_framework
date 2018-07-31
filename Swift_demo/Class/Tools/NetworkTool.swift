//
//  NetworkTool.swift
//  Swift_demo
//
//  Created by xuqidong on 2018/7/10.
//  Copyright © 2018 xuqidong. All rights reserved.
//

import Foundation
import Alamofire

protocol NetworkToolProtocol {
//    static func loadFeeds(completionHandler: @escaping (_ response: NSDictionary) -> ())
//    static func loadTest(Success:@escaping(_ Success: Any) -> (), Failed:@escaping(_ Failed: Any) -> ())
}

extension NetworkToolProtocol {
    
    // MARK: - 成功返回结果
    static func loadFeeds(completionHandler: @escaping (_ response: NSDictionary) -> ()) {
        let url = "http://0.0.0.0:8181"
        Alamofire.request(url).responseJSON { (response) in
            guard response.result.isSuccess else { return }
            if let value = response.result.value {
                completionHandler(value as! NSDictionary)
            }
        }
    }
    
    // MARK: - 成功和失败
    static func loadTest(Success:@escaping(_ Success: Any) -> (), Failed:@escaping(_ Failed: Any) -> ()) {
        let url = "http://0.0.0.0:8181/getLevel"
        Alamofire.request(url).responseJSON { (response) in
            //guard response.result.isSuccess else { return }
            if let value = response.result.value {
                Success(value)
            } else {
                Failed(response.result.error?.localizedDescription ?? "AF Error")
            }
        }
    }
    
    
    static func insert(para:Parameters, Success:@escaping(_ Success: Any) -> (), Failed:@escaping(_ Failed: Any) -> ()) {
        let url = "http://0.0.0.0:8181/insert"
        Alamofire.request(url, method: .post, parameters: para, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            
        }
    }
    
}

struct NetworkTool: NetworkToolProtocol {}
