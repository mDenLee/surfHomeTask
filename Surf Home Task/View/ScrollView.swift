//
//  UIStackView.swift
//  Surf Home Task
//
//  Created by Lee on 09.02.2023.
//

import UIKit

final class ScrollView: UIScrollView {
    
    let iosDirection = DirectoryButton(name: "IOS")
    let androidDirection = DirectoryButton(name: "Android")
    let designDirection = DirectoryButton(name: "Design")
    let flutterDirection = DirectoryButton(name: "Flutter")
    let qaDirection = DirectoryButton(name: "QA")
    let pmDirection = DirectoryButton(name: "PM")
    
    init() {
        super.init(frame: CGRect())
        contentSize = CGSize(width: 486, height: 44)
        setConstraints()
    }
    
    func setConstraints() {
        let stack = UIStackView(arrangedSubviews: [iosDirection, androidDirection, designDirection, flutterDirection,qaDirection,pmDirection])
        stack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stack)
        stack.alignment = .fill
        stack.axis = .horizontal
        stack.spacing = 12
        NSLayoutConstraint.activate([
            stack.leftAnchor.constraint(equalTo: leftAnchor),
            stack.topAnchor.constraint(equalTo: topAnchor),
        ])
        for i in stack.arrangedSubviews {
            NSLayoutConstraint.activate([
                i.widthAnchor.constraint(equalToConstant: 71),
                i.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
