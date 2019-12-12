//
//  ViewController.swift
//  ChainTail
//
//  Created by yuantrybest on 12/12/2019.
//  Copyright (c) 2019 yuantrybest. All rights reserved.
//

import UIKit
import ChainTail

class ViewController: UIViewController {
    var data: TimeInterval = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        data = Date().timeIntervalSince1970
        for _ in 0...10000 {
            confLabel()
        }
        let data2 = Date().timeIntervalSince1970
        print("加载上去\(data2 - data)")
    }
    
    private func confLabel() {
        let tipLabel = UILabel()
            .text("设置")
            .font(UIFont.systemFont(ofSize: 16.0))
            .textColor(UIColor.red)
            .baselineAdjustment(.alignCenters)

        tipLabel.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        view.addSubview(tipLabel)
        /*
         加载上去0.8731341361999512
         布局完成1.0050420761108398
         *
         加载上去0.8750600814819336
         布局完成1.003645896911621
         *
         加载上去0.867548942565918
         布局完成0.9886040687561035
         *
         加载上去0.9688971042633057
         布局完成1.0934488773345947
         *
         平均加载 0.896160066127777
         平均布局 1.02268522977829
         */
    }
    
    private func confLabel2() {
        let tipLabel = UILabel()
        tipLabel.text = "设置"
        tipLabel.font = UIFont.systemFont(ofSize: 16.0)
        tipLabel.textColor = UIColor.red
        tipLabel.baselineAdjustment = .alignCenters

        tipLabel.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        view.addSubview(tipLabel)
        /*
         加载上去0.8630900382995605
         布局完成0.9875180721282959
         *
         加载上去0.9096851348876953
         布局完成1.0468580722808838
         *
         加载上去0.8845381736755371
         布局完成1.0107080936431885
         *
         加载上去0.8604631423950195
         布局完成0.9811902046203613
         *
         平均加载 0.879444122314453
         平均布局 1.006568610668182
         */
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let data3 = Date().timeIntervalSince1970
        print("布局完成\(data3 - data)")
    }
}

