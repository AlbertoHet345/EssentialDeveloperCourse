//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 05/01/24.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}

