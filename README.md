# SwiftDemo

#### 介绍
适合初学者使用的用swift搭建的项目框架，包含tabbar、网络请求封装和数据模型转换等。

#### 软件架构
CommonDefine 各种常用的宏定义。
URLPath 统一的接口地址管理文件。
BaseViewController 根控制器，添加了侧滑返回手势。
BaseNavigationController 自定义的NavigationController。
TabBarViewController 自定义的TabBar，加了个点击的动画效果。
NetworkTool 对Alamofire的二次封装，目前提供了get和post请求两种方法。
Controllers 各种控制器的集合，采用了MVVM模式。Controller里是各种控制器，Model里是模型，VM里是具体的业务逻辑，包括请求数据并将结果回调等。这里用到了HandyJSON。View里放置各种自定义视图，比如cell、view等。

#### 安装教程

1.  下载此项目到本地
2.  cd进入到项目目录下
3.  pod install，安装成功后用Xcode打开SwiftDemo.xcworkspace运行即可。

#### 使用说明

1.  iOS系统10.0以上
2.  暂时没了吧。。


