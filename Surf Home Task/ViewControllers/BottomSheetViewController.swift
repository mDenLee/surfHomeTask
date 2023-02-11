
import UIKit

final class BottomSheetViewController: UIViewController{
    
    private let mainView = BottomSheetView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
        setViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        Animation.scrollRightLeft(view: mainView.scrollView)
    }
    
    func setViews() {
        mainView.mainLabel.text = Strings.titleString
        mainView.firstDetailLabel.text = Strings.detailString
        mainView.secondDetailLabel.text = Strings.secondDetailString
        mainView.joinButton.setTitle(Strings.joinButtonString, for: .normal)
        mainView.askLabel.text = Strings.askString
        mainView.joinButton.addTarget(self, action: #selector(click), for: .touchUpInside)
    }
    
    @objc func click(sender: UIButton) {
        showInfoAlert(title: Strings.alertTitleString, message: Strings.alertTextString)
    }
}

