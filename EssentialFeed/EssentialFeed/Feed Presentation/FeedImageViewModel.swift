//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 21/11/23.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        location != nil
    }
}
