//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 26/12/23.
//

import UIKit

public final class ErrorView: UIView {
    @IBOutlet private(set) public var button: UIButton!

    public var message: String? {
        get { return isVisible ? button.title(for: .normal) : nil }
    }

    private var isVisible: Bool {
        return alpha > 0
    }

    public override func awakeFromNib() {
        super.awakeFromNib()

        button.setTitle(nil, for: .normal)
        alpha = 0
    }
    
    func update(message: String?) {
        if let message {
            show(message: message)
        } else {
            hideMessage()
        }
    }

    private func show(message: String) {
        button.setTitle(message, for: .normal)

        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }

    @IBAction private func hideMessage() {
        UIView.animate(
            withDuration: 0.25,
            animations: { self.alpha = 0 },
            completion: { completed in
                if completed {
                    self.button.setTitle(nil, for: .normal)
                }
            })
    }
}
