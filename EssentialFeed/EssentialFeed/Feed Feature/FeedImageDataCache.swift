//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 15/01/24.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
