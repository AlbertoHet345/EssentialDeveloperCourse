//
//  FeedImagePresenter.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 22/11/23.
//

import Foundation

public final class FeedImagePresenter {
    
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
