//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 01/08/23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
