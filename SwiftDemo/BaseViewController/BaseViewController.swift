//
//  BaseViewController.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/12.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,UIGestureRecognizerDelegate {
    
    var navView: NavView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backItem = UIBarButtonItem.init(image: UIImage.init(named: "back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backClick))
        self.navigationItem.leftBarButtonItem = backItem
        
        self.navigationController?.interactivePopGestureRecognizer!.isEnabled = true;
        self.navigationController?.interactivePopGestureRecognizer!.delegate = self;
        
    }
    @objc func backClick() {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(self.navigationController?.viewControllers.count ?? 1 > 1 ? false : true, animated: true)
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if self.navigationController?.viewControllers.count == 1 {
            return false
        } else {
            return true
        }
    }
}
