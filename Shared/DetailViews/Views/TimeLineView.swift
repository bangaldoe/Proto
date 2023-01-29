//
//  Feeds.swift
//  Proto (iOS)
//
//  Created by kakao_ent on 2023/01/06.
//

import SwiftUI

struct TimeLineView: View {
    @ObservedObject var viewModel = TimeLineViewModel()
    
    var body: some View {
        NavigationView {
            List(self.viewModel.data.reversed()) {feed in
                FeedRow(feed: feed)
            }
        }
    }
}


struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView()
    }
}
