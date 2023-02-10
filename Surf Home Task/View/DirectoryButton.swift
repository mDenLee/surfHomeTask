//
//  ButtonView.swift
//  Surf Home Task
//
//  Created by Lee on 08.02.2023.
//

import UIKit

class DirectoryButton: UIButton {
    
    init(name:String) {
        super.init(frame: .zero)
        setTitle(name, for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = UIFont(name: "SF Pro Display", size: 14.0)
        adjustsImageSizeForAccessibilityContentSizeCategory = true
        layer.cornerRadius = 12
        layer.backgroundColor = UIColor.lightGray.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
