//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alberto Garcia Paul on 21/11/23.
//

import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        location != nil
    }
}
