//
//  AppDelegate.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/11.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = TabBarViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

