//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 23/11/23.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
