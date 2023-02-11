//
//  BottomSheetView.swift
//  Surf Home Task
//
//  Created by Lee on 08.02.2023.
//

import UIKit

final class BottomSheetView: UIView {
    
    let mainLabel = UILabel()
    let firstDetailLabel = UILabel()
    let scrollView = ScrollView()
    let secondDetailLabel = UILabel()
    let stackView = StackView()
    let joinButton = UIButton()
    let askLabel = UILabel()

    init() {
        super.init(frame: CGRect())
        backgroundColor = .white
        setViews()
        setConstraints()
    }

    func setViews() {
        mainLabel.font = Fonts.tittleFont
        mainLabel.textColor = .black
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainLabel)

        firstDetailLabel.font = Fonts.detailTextFont
        firstDetailLabel.textColor = .lightGray
        firstDetailLabel.numberOfLines = 0
        firstDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(firstDetailLabel)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(scrollView)

        secondDetailLabel.font = Fonts.detailTextFont
        secondDetailLabel.textColor = .lightGray
        secondDetailLabel.numberOfLines = 0
        secondDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(secondDetailLabel)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        
        joinButton.backgroundColor = .darkGray
        joinButton.layer.cornerRadius = 30
        joinButton.titleLabel?.textColor = .white
        joinButton.titleLabel?.font = Fonts.joinButtonTextFont
        joinButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(joinButton)
        
        askLabel.font = Fonts.detailTextFont
        askLabel.textColor = .lightGray
        askLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(askLabel)
    }

    func setConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            mainLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            mainLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 141),
            mainLabel.heightAnchor.constraint(equalToConstant: 32),
       
            
            firstDetailLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 12),
            firstDetailLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            firstDetailLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            firstDetailLabel.heightAnchor.constraint(equalToConstant: 90),
        
            
            scrollView.topAnchor.constraint(equalTo: firstDetailLabel.bottomAnchor, constant: 12),
            scrollView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            scrollView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            scrollView.heightAnchor.constraint(equalToConstant: 44),
        
            
            secondDetailLabel.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 12),
            secondDetailLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            secondDetailLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            secondDetailLabel.heightAnchor.constraint(equalToConstant: 70),
    
            
            stackView.topAnchor.constraint(equalTo: secondDetailLabel.bottomAnchor, constant: 12),
            stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            stackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 100),
            
            
            joinButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -24),
            joinButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            joinButton.heightAnchor.constraint(equalToConstant: 60),
            joinButton.widthAnchor.constraint(equalToConstant: 219),
            
            
            askLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            askLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -44),
            askLabel.widthAnchor.constraint(equalToConstant: 92),
            askLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
