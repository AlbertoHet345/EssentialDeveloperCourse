//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Alberto Garcia Paul on 12/02/24.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
