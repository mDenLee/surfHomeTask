
import UIKit

final class DirectoryButton: UIButton {
    
    init(name:String) {
        super.init(frame: .zero)
        setTitle(name, for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = Fonts.buttonTextFont
        adjustsImageSizeForAccessibilityContentSizeCategory = true
        layer.cornerRadius = 12
        layer.backgroundColor = UIColor.lightGray.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
