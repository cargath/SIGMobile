//: Extensions

import UIKit

public extension UIView {

    @available(iOS 9.0, *)
    public func constraintsEqualToEdges(view: UIView) -> [NSLayoutConstraint] {
        return [
            topAnchor.constraintEqualToAnchor(view.topAnchor),
            leftAnchor.constraintEqualToAnchor(view.leftAnchor),
            rightAnchor.constraintEqualToAnchor(view.rightAnchor),
            bottomAnchor.constraintEqualToAnchor(view.bottomAnchor)
        ]
    }

}

public extension Array where Element: NSLayoutConstraint {

    @available(iOS 8.0, *)
    public func activate() {
        for constraint in self {
            constraint.active = true
        }
    }

    @available(iOS 8.0, *)
    public func deactivate() {
        for constraint in self {
            constraint.active = false
        }
    }
    
}
