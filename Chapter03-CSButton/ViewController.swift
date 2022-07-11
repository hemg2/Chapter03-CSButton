//
//  ViewController.swift
//  Chapter03-CSButton
//
//  Created by 1 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let frame = CGRect(x: 30, y: 50, width: 150, height: 30)
        let csBtn = CSButton(frame: frame)
        self.view.addSubview(csBtn)
        
        
        // 인자값에 따라 다른 스타일로 결정되는 버튼1
        let rectBtn = CSButton(type: .rect)
        rectBtn.frame = CGRect(x: 30, y: 200, width: 150, height: 30)
        self.view.addSubview(rectBtn)
        
        // 인자값에 따라 다른 스타일로 결정되는 버튼2
        let circleBtn = CSButton(type: .circle)
        circleBtn.frame  = CGRect(x: 200, y: 200, width: 150, height: 30)
        self.view.addSubview(circleBtn)
    }


}

