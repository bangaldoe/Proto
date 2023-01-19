//
//  Feed.swift
//  Proto (iOS)
//
//  Created by kakao_ent on 2023/01/08.
//

import Foundation
import SwiftUI

struct Feed: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
    let feed_content: String
    var likes: Int? = 0
    var timestamp: Date?
    
    private var imageName: String?
    var image: Image? {
        Image(imageName ?? "")
    }
    
    init(id: Int, name: String, email: String, feed_content: String, likes: Int? = 0, timestamp: Date? = nil, imageName: String? = "") {
        self.id = id
        self.name = name
        self.email = email
        self.feed_content = feed_content
        self.likes = likes
        self.timestamp = timestamp
        self.imageName = imageName
    }
}
