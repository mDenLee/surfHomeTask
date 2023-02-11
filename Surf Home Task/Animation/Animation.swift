
import UIKit

final class Animation {
    static func scrollRightLeft(view: UIScrollView) {
        sleep(1)
        view.setContentOffset(CGPoint(x: 100, y: 0), animated: true)
    }
}
