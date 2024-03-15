//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 26/12/23.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        ResourceErrorViewModel(message: message)
    }
}
