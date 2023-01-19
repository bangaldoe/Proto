//
//  Feed.swift
//  Proto (iOS)
//
//  Created by kakao_ent on 2023/01/06.
//

import SwiftUI

struct FeedRow: View {
    @ObservedObject var viewModel: FeedRowViewModel
    
    let dateFormatter = RelativeDateTimeFormatter()
    
    init(feed: Feed) {
        self.viewModel = FeedRowViewModel(feed: feed)
        dateFormatter.dateTimeStyle = .named
        dateFormatter.unitsStyle = .short
    }
    
    var body: some View {
        let feed = self.viewModel.feed
        //        dateFormatter.dateTimeStyle = .named
        
        HStack(alignment: .top, spacing: 20) {
            feed.image?
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            VStack (alignment: .leading) {
                HStack () {
                    Text(feed.name).fontWeight(.bold)
                    Text(feed.email)
                    if let date = feed.timestamp {
                        Text(dateFormatter.localizedString(for: date, relativeTo: Date.now)).fontWeight(.light)
                    } else {
                        Text("")
                    }
                }
                //                Text("오늘 물줬다.")
                Text(feed.feed_content)
                //                Spacer()
                HStack {
                    HStack {
                        Image("like").resizable().scaledToFit()
                        Text("1")
                    }.frame(height: 20)
                }
            }
        }
        
    }
}

struct FeedRow_Previews: PreviewProvider {
    static var previews: some View {
        FeedRow(feed: Feed(id: 1, name: "name", email: "test@test.com", feed_content: "text", timestamp: Date.now, imageName: "placeholder"))
            .previewLayout(.fixed(width: 300, height: 70))
    }
    
}
