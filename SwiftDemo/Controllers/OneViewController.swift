//
//  OneViewController.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/11.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit
import HandyJSON
import SnapKit

class OneViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        OneVM.getData { (model) in
            PrintDebug(model.headers.Host)
        }
        
        OneVM.getDataWithParams(type: "2") { (model) in
            PrintDebug(model.url)
        }
        
        OneVM.postDataWithParams(name: "张三", password: "123456") { (postModel) in
            PrintDebug(postModel.headers.UserAgent)
        }
        
        /*//SnapKit使用
         let aView = UIView()
         aView.backgroundColor = .blue
         self.view.addSubview(aView)
         
         aView.snp.makeConstraints { (make) in
             make.left.top.equalTo(LineX(100))
             make.bottom.right.equalTo(LineX(-100))
         }
         */
    }
    @IBAction func jump(_ sender: Any) {
        self.navigationController?.pushViewController(One1ViewController(), animated: true)
    }
}
