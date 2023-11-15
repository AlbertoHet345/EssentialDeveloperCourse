//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 15/11/23.
//

import UIKit
import EssentialFeed

public enum FeedUIComposer {
    public static func feedComposeWith(feedLoader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let refreshController = FeedRefreshViewController(feedLoader: feedLoader)
        let feedController = FeedViewController(refreshController: refreshController)
        refreshController.onRefresh = { [weak feedController] feed in
            feedController?.tableModel = feed.map { model in
                FeedImageCellController(model: model, imageLoader: imageLoader)
            }
        }
        return feedController
    }
}
