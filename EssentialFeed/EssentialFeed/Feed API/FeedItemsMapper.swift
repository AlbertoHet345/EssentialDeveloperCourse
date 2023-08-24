//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 07/08/23.
//

import Foundation

enum FeedItemsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }

    private static var statusCode: Int {
        200
    }
    
    static func map(_ data: Data, response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == statusCode,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        
        return root.items
    }
}
