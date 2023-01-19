//
//  TimeLineViewModel.swift
//  Proto (iOS)
//
//  Created by kakao_ent on 2023/01/08.
//

import Foundation

class TimeLineViewModel: ObservableObject {
    @Published var data = [Feed]()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        let sampleData = """
        [
            {
                "id": 1,
                "name": "hamdoe",
                "email": "hamdoe@email.com",
                "imageName": "plant1",
                "feed_content": "오늘 물줬다.",
                "likes": 0,
                "timestamp": "2023-01-01T00:00:00Z"
            },
            {
                "id": 2,
                "name": "hamdoe",
                "email": "hamdoe@email.com",
                "imageName": "plant1",
                "feed_content": "오늘도 물줬다.",
                "likes": 0,
                "timestamp": "2023-01-02T00:00:00Z"
            }
        ]
        """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let data = try! decoder.decode([Feed].self, from: sampleData)
        
        self.data = data
    }
}
