//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Alberto Garcia Paul on 24/08/23.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any erro", code: 0)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    Data("any data".utf8)
}
