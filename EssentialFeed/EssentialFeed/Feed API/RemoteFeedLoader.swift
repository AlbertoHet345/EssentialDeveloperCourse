//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 01/08/23.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
