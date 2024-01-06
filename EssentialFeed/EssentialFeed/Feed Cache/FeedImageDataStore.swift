//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 05/01/24.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
