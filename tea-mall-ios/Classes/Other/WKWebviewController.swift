//
//  WKWebviewController.swift
//  tea-mall-ios
//
//  Created by tianhaojie on 2019/1/18.
//  Copyright © 2019 lovecross. All rights reserved.
//

import UIKit
import WebKit
import SnapKit
class WKWebviewController: UIViewController {
    
    
    var webview = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let superview = self.view
        superview!.backgroundColor = UIColor.white
        //创建网址
        let url = NSURL(string: "https://www.baidu.com")
        let webview = WKWebView()
        if #available(iOS 11.0, *) {
            webview.scrollView.contentInsetAdjustmentBehavior = .never;
        }
        view.backgroundColor  = UIColor.red
        
        superview!.addSubview(webview)
        webview.snp.makeConstraints { (make) in
            make.top.equalTo(superview!).offset(0)
            make.left.equalTo(superview!).offset(0)
            make.right.equalTo(superview!).offset(0)
            make.bottom.equalTo(superview!).offset(0)
        }
        
        //创建请求
        let request = NSURLRequest(url: url! as URL)
        //加载请求
        webview.load(request as URLRequest)
        //添加wkwebview
        // Do any additional setup after loading the view.
        
        //self.navigationController?.navigationBar.isHidden = true
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
