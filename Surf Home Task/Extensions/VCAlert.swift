
import UIKit

extension UIViewController {
    
    @objc func showInfoAlert(title:String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Закрыть", style: .cancel)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
}
