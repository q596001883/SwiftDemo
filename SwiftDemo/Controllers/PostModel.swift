//
//  PostModel.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/12.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit
import HandyJSON

class PostModel: HandyJSON {
    
    var args: Dictionary<String, Any> = [:]
    var data: String!
    var files: Dictionary<String, Any> = [:]
    var form: Dictionary<String, Any> = [:]
    var headers = PostHeadersModel()
    var json: String!
    var origin: String!
    var url: String!
    
    required init() {}
}

class PostHeadersModel: HandyJSON {
    
    var Accept: String!
    var AcceptEncoding: String!
    var AcceptLanguage: String!
    var ContentLength: String!
    var Host: String!
    var Origin: String!
    var Referer: String!
    var UserAgent: String!
    
    required init() {}
    
    func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.AcceptEncoding <-- "Accept-Encoding"
        mapper <<<
            self.AcceptLanguage <-- "Accept-Language"
        mapper <<<
            self.UserAgent <-- "User-Agent"
        mapper <<<
            self.ContentLength <-- "Content-Length"
    }
}
