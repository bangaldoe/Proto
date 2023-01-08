//
//  ProtoApp.swift
//  Shared
//
//  Created by USER on 2023/01/06.
//

import SwiftUI

@main
struct ProtoApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(user: User.sampleData, plants: Plant.sampleData)
        }
    }
}
