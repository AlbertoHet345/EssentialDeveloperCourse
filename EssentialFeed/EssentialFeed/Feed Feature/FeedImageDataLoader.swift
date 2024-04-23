//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 15/11/23.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
