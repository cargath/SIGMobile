//: Extensions

import UIKit

public extension UIView {

    @available(iOS 9.0, *)
    public func constraintsEqualToEdges(view: UIView) -> [NSLayoutConstraint] {
        return [
            topAnchor.constraint(equalTo: view.topAnchor),
            leftAnchor.constraint(equalTo: view.leftAnchor),
            rightAnchor.constraint(equalTo: view.rightAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
    }

}

public extension Array where Element: NSLayoutConstraint {

    @available(iOS 8.0, *)
    public func activate() {
        for constraint in self {
            constraint.isActive = true
        }
    }

    @available(iOS 8.0, *)
    public func deactivate() {
        for constraint in self {
            constraint.isActive = false
        }
    }
    
}
