//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 01/08/23.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
