//
//  PublishViewController.swift
//  CYLTabbarController-Swift
//
//  Created by Anthony on 2017/12/29.
//  Copyright © 2017年 Anthony. All rights reserved.
//

import UIKit
import SnapKit

class PublishViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let superview = self.view
        
        self.view.backgroundColor = UIColor.white;
        let videoBtn = UIButton();
        videoBtn.setTitle("录制", for: .normal)
        videoBtn.setTitleColor(UIColor.black, for: .normal);
        self.view.addSubview(videoBtn);
        
        videoBtn.snp.makeConstraints { (make) in
            make.top.equalTo(superview!).offset(120)
            make.left.equalTo(superview!).offset(150)
            make.width.equalTo(120)
            make.height.equalTo(80)
        }
        
        videoBtn.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
    @objc func buttonClick(){
        let recordingvc = RecordingViewController();
         recordingvc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(recordingvc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
