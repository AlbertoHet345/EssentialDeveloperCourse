//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 15/01/24.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
