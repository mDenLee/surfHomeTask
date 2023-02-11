import UIKit

final class StackView: UIStackView {
    
    let iosDirection = DirectoryButton(name: "IOS")
    let androidDirection = DirectoryButton(name: "Android")
    let designDirection = DirectoryButton(name: "Design")
    let flutterDirection = DirectoryButton(name: "Flutter")
    let qaDirection = DirectoryButton(name: "QA")
    let pmDirection = DirectoryButton(name: "PM")
    
    init() {
        super.init(frame: .zero)
        setConstraints()
    }
    
    func setConstraints() {
        let firstStack = UIStackView(arrangedSubviews: [iosDirection,androidDirection,designDirection])
        firstStack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(firstStack)
        firstStack.alignment = .fill
        firstStack.axis = .horizontal
        firstStack.spacing = 12
        
        NSLayoutConstraint.activate([
            firstStack.topAnchor.constraint(equalTo: topAnchor),
            firstStack.leftAnchor.constraint(equalTo: leftAnchor)
        ])
        
        for i in firstStack.arrangedSubviews {
            i.widthAnchor.constraint(equalToConstant: 71).isActive = true
            i.heightAnchor.constraint(equalToConstant: 44).isActive = true
        }
        
        let secondStack = UIStackView(arrangedSubviews: [flutterDirection,qaDirection,pmDirection])
        secondStack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(secondStack)
        secondStack.alignment = .fill
        secondStack.axis = .horizontal
        secondStack.spacing = 12
        
        NSLayoutConstraint.activate([
            secondStack.topAnchor.constraint(equalTo: firstStack.bottomAnchor, constant: 12),
            secondStack.leftAnchor.constraint(equalTo: leftAnchor)
        ])
        
        for i in secondStack.arrangedSubviews {
            i.widthAnchor.constraint(equalToConstant: 71).isActive = true
            i.heightAnchor.constraint(equalToConstant: 44).isActive = true        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
