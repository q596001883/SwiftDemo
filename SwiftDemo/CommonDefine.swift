//
//  CommonDefine.swift
//  SwiftDemo
//
//  Created by Seashore on 2019/11/12.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

let Screen_Bounds = UIScreen.main.bounds
let Screen_Height:Double = Double(UIScreen.main.bounds.height)
let Screen_Width:Double = Double(UIScreen.main.bounds.width)

let StatusBarHeight:Double = Double(UIApplication.shared.statusBarFrame.size.height)//状态栏高度
let NavBarHeight:Double = 44.0

let iphone8W = 375.0
let iphone8H = 667.0

let ScaleX:Double = Double(Screen_Width)/iphone8W
let ScaleY:Double = Double(Screen_Height)/iphone8W

func LineX(_ l:Double) -> Double {
    return l * ScaleX
}

func LineY(_ l:Double) -> Double {
    return l * ScaleY
}

func PrintDebug<T>(_ message:T, file: String = #file, methodsName: String = #function, line: Int = #line){
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("class: \(fileName)\nmethod: \(methodsName)\nline: \(line)\n\(message)\n")
    #endif
}

#if DEBUG //测试环境
let BaseUrl = "http://httpbin.org/"
#else
let BaseUrl = "http://httpbin.org/"
#endif

