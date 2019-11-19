//
//  NetworkTool.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/12.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit
import Alamofire

private let NetworkShareInstance = NetworkTool()

enum MethodType {
    case get
    case post
}

class NetworkTool: NSObject {
    //单例
    class var shareInstance: NetworkTool {
        return NetworkShareInstance
    }
}

extension NetworkTool {
    /// 网络请求通用版
    /// - Parameter type: 参数get/post
    /// - Parameter URLString: 请求路径
    /// - Parameter paramaters: 请求参数
    /// - Parameter finishCallBack: 返回请求成功以后的值
    func requestDatas(_ type: MethodType, URLString: String, paramaters: [String: Any]?, finishCallBack: @escaping (_ response: Any) -> ()) {
        
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        let urlStr = BaseUrl + URLString
        
        PrintDebug("request: 请求地址 = \(urlStr), 请求参数 = \(String(describing: paramaters))")
        Alamofire.request(urlStr, method: method, parameters: paramaters, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            PrintDebug("response: \(response)")
            //判断是否请求成功
            guard response.result.value != nil else {
                PrintDebug(response.result.error)
                return
            }
            //获取结果
            guard response.result.isSuccess else {
                return
            }
            //数据回调
            if let value = response.result.value {
                finishCallBack(value)
            }
        }
    }
}
