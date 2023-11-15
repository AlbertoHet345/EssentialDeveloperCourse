//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 15/11/23.
//

import Foundation

public protocol FeedImageDataLoaderTask {
    func cancel()
}

public protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>
    
    func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
