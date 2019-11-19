//
//  TabbarViewController.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/11.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    var indexFlag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tabBar.isTranslucent = false
        addControllers()
    }
    
    private func addControllers() {
        addChildControllers(childVC: OneViewController(), title: "首页", image: "Icon1", selectImage: "Icon1_1")
        addChildControllers(childVC: TwoViewController(), title: "动态", image: "Icon2", selectImage: "Icon2_1")
        addChildControllers(childVC: ThreeViewController(), title: "发现", image: "Icon3", selectImage: "Icon3_1")
        addChildControllers(childVC: FourViewController(), title: "我的", image: "Icon4", selectImage: "Icon4_1")
    }
    
    private func addChildControllers(childVC: UIViewController, title: String, image: String, selectImage: String) {
        childVC.tabBarItem.title = title
        childVC.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        childVC.tabBarItem.selectedImage = UIImage(named: selectImage)?.withRenderingMode(.alwaysOriginal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.blue], for: .selected)
        
        let nav = BaseNavigationController(rootViewController: childVC)
        addChild(nav)
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if let index = tabBar.items?.firstIndex(of: item) {
            if indexFlag != index {
                animationWithIndex(index: index)
            }
        }
    }
    
    private func animationWithIndex(index: Int) {
        var arrViews = [UIView]()
        for tabbarButton in tabBar.subviews {
            if tabbarButton.isKind(of: NSClassFromString("UITabBarButton")!) {
                arrViews.append(tabbarButton)
            }
        }
        
        let pulse = CABasicAnimation(keyPath: "transform.scale")
        pulse.timingFunction = CAMediaTimingFunction(name: .easeOut)
        pulse.duration = 0.1
        pulse.repeatCount = 1
        pulse.autoreverses = true
        pulse.fromValue = NSNumber(value: 0.7)
        pulse.toValue = NSNumber(value: 1.1)
        arrViews[index].layer.add(pulse, forKey: nil)
        indexFlag = index
    }
}
