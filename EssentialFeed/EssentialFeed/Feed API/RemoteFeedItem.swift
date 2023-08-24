//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 23/08/23.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
