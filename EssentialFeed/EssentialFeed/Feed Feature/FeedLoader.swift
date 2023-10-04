//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 01/08/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
