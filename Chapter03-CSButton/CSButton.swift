//
//  CSButton.swift
//  Chapter03-CSButton
//
//  Created by 1 on 2022/07/11.
//

import UIKit
// 버튼 타입을 결정하는 열거형
public enum CSButtonType {
    case rect
    case circle
}
class CSButton: UIButton {
    
    var style: CSButtonType = .rect{
        didSet {
            switch style {
            case .rect :
                self.backgroundColor = .black  // 배경색 검은색
                self.layer.borderColor = UIColor.black.cgColor   // 테두리 색 검은색
                self.layer.borderWidth = 2 // 테두리 두께
                self.layer.cornerRadius = 0 // 모서리 0이라서 없음 둥굴게안함
                self.setTitleColor(.white, for: .normal)  //글씨는 흰색
                self.setTitle("Rect Button", for: .normal)  //기본문구 설정
            case .circle :
                self.backgroundColor = .red  // 배경색상 레드
                self.layer.borderColor = UIColor.blue.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 50 // 50만큼 둥글게 한다.
                self.setTitle("Circle Button", for: .normal)
            }
        }
    }
    @objc func counting(_ sender: UIButton) {
        sender.tag = sender.tag + 1
        sender.setTitle("\(sender.tag) 번째 클릭", for: .normal)
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.backgroundColor = .gray
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.setTitle("버튼", for: .normal)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("코드로 생성된버튼", for: .normal)
    }
    init() {
        super.init(frame: CGRect.zero)
    }
    convenience init(type: CSButtonType) {
        self.init()
        
        switch type {
        case .rect :
            self.backgroundColor = .black  // 배경은은 검은색
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 0  // 모서리는 둥글지 않게
            self.setTitleColor(.white, for: .normal)  // 글씨는 흰색으로
            self.setTitle("Rect Button", for: .normal) // 기본 문구 설정
        
        case .circle :
            self.backgroundColor = .red
            self.layer.borderColor = UIColor.blue.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 50
            self.setTitle("Circle Button", for: .normal)
        }
        self.addTarget(self, action: #selector(counting(_:)), for: .touchUpInside)
    }
}
