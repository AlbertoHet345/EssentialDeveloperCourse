//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 17/08/23.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func save(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
}
