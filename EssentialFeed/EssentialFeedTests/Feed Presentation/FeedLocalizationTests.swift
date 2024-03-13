//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Alberto Garcia Paul on 24/11/23.
//

import XCTest
@testable import EssentialFeed

final class FeedLoacalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        assertLocalizedKeyAndValuesExists(in: bundle, table)
    }
    
}
