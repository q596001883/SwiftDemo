//
//  BaseNavigationController.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/18.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController,UINavigationControllerDelegate,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        //添加手势代理
        self.interactivePopGestureRecognizer?.delegate = self
        self.delegate = self
    }
    
    /// 重写Push方法
    /// 所有的push动作都会调用此方法
    /// - Parameters:
    ///   - viewController: 需要push的VC
    ///   - animated: 是否动画
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        //如果不是栈底的控制器才需要隐藏，根控制器不需要处理
        if children.count > 0{
            //隐藏tabBar
            viewController.hidesBottomBarWhenPushed = true
            self.interactivePopGestureRecognizer?.isEnabled = true
        }
        
        super.pushViewController(viewController, animated: true)
    }
}
