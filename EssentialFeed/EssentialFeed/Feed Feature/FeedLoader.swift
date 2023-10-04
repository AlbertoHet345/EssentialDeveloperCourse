//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 01/08/23.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
