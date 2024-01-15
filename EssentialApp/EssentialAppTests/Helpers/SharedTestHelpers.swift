//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Alberto Garcia Paul on 15/01/24.
//

import Foundation

func anyData() -> Data {
    Data("any data".utf8)
}

func anyURL() -> URL {
    URL(string: "http://a-url.com")!
}

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}
