
import UIKit

final class MainViewController: UIViewController {
    
    private let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
        showMyBottomSheet()
    }
    
    func showMyBottomSheet() {
        let vc = BottomSheetViewController()
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.medium(),.large()]
            sheet.largestUndimmedDetentIdentifier = .medium
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 40
        }
        present(vc,animated: true,completion: nil)
    }
    
}

