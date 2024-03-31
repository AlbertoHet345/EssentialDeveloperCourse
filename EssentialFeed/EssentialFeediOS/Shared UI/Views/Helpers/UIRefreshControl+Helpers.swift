//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 26/12/23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
