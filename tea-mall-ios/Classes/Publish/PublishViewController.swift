//
//  PublishViewController.swift
//  CYLTabbarController-Swift
//
//  Created by Anthony on 2017/12/29.
//  Copyright © 2017年 Anthony. All rights reserved.
//

import UIKit
import WebKit
class PublishViewController: UIViewController {
    var webview = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()

        //创建wkwebview
        let webConfiguration = WKWebViewConfiguration()

        let webview = WKWebView(frame: self.view.bounds,configuration: webConfiguration)
        //创建网址
        let url = NSURL(string: "http://192.168.1.235:8099/h5/#/home")
        //创建请求
        let request = NSURLRequest(url: url! as URL)
        //加载请求
        webview.load(request as URLRequest)
        //添加wkwebview
        self.view.addSubview(webview)
        
//        设置导航条
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.barStyle = .blackOpaque
        self.navigationController?.navigationBar.shadowImage = UIImage()

    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
