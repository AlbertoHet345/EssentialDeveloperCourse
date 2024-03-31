//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Alberto Garcia Paul on 15/01/24.
//

import Foundation
import EssentialFeed

func anyData() -> Data {
    Data("any data".utf8)
}

func anyURL() -> URL {
    URL(string: "http://a-url.com")!
}

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func uniqueFeed() -> [FeedImage] {
    [FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())]
}

private class DummyView: ResourceView {
    func display(_ viewModel: Any) {}
}

var loadError: String {
    LoadResourcePresenter<Any, DummyView>.loadError
}

var feedTitle: String {
    FeedPresenter.title
}

var commentsTitle: String {
    ImageCommentsPresenter.title
}
