//
//  OneModel.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/12.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit
import HandyJSON

class OneModel: HandyJSON {
    
    var args: Dictionary<String, Any> = [:]
    var headers = HeadersModel()
    var origin: String!
    var url: String!

    required init() {}
}
class HeadersModel: HandyJSON {
    
    var Accept: String!
    var AcceptEncoding: String!
    var AcceptLanguage: String!
    var Host: String!
    var UserAgent: String!
    
    required init() {}
    
    func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.AcceptEncoding <-- "Accept-Encoding"
        mapper <<<
            self.AcceptLanguage <-- "Accept-Language"
        mapper <<<
            self.UserAgent <-- "Accept-Agent"
    }
}
