//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 15/01/24.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
