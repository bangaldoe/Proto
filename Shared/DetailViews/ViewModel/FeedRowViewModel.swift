//
//  FeedRowViewModel.swift
//  Proto (iOS)
//
//  Created by kakao_ent on 2023/01/08.
//

import Foundation

class FeedRowViewModel: ObservableObject {
    var feed: Feed
    init(feed: Feed) {
        self.feed = feed
    }
}
