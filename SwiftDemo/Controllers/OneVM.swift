//
//  OneVM.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/12.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

class OneVM: NSObject {
    
    /// get请求不带参数
    /// - Parameter finishCallBack: 返回model
    class func getData(finishCallBack: @escaping (_ response: OneModel) -> ()) {
        NetworkTool.shareInstance.requestDatas(.get, URLString: GetPath, paramaters: nil) { (response) in
            let model = OneModel.deserialize(from: response as? Dictionary)
            finishCallBack(model!)
        }
    }
    
    /// get带参数
    /// - Parameter type: 类型
    /// - Parameter finishCallBack: 返回model
    class func getDataWithParams(type: String, finishCallBack: @escaping (_ response: OneModel) -> ()) {
        let params = ["type": type]
        NetworkTool.shareInstance.requestDatas(.get, URLString: GetPath, paramaters: params) { (response) in
            let model = OneModel.deserialize(from: response as? Dictionary)
            finishCallBack(model!)
        }
    }
    
    
    /// post请求
    /// - Parameter name: 参数name
    /// - Parameter password: 参数password
    /// - Parameter finishCallBack: 返回PostModel
    class func postDataWithParams(name: String, password: String, finishCallBack: @escaping (_ response: PostModel) -> ()) {
        let params = ["name": name, "password": password]
        NetworkTool.shareInstance.requestDatas(.post, URLString: PostPath, paramaters: params) { (response) in
            let model = PostModel.deserialize(from: response as? Dictionary)
            finishCallBack(model!)
        }
    }
}

