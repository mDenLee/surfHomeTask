
import UIKit

final class BottomSheetViewController: UIViewController{
    
    private let mainView = BottomSheetView()
    private let directionData = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
        setViews()
    }
    
    func setViews() {
        mainView.mainLabel.text = directionData.titleString
        mainView.firstDetailLabel.text = directionData.detailString
        mainView.secondDetailLabel.text = directionData.secondDetailString
        mainView.joinButton.setTitle(directionData.joinButtonString, for: .normal)
        mainView.askLabel.text = directionData.askString
        mainView.joinButton.addTarget(self, action: #selector(click), for: .touchUpInside)
    }
    
    @objc func click(sender: UIButton) {
        showInfoAlert(title: directionData.alertTitleString, message: directionData.alertTextString)
    }
}

