//
//  FeedImageDataMapper.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 23/02/24.
//

import Foundation

public enum FeedImageDataMapper {
    public enum Error: Swift.Error {
        case invalidData
    }
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }
        return data 
    }
}
