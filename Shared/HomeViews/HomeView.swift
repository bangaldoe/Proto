//
//  ContentView.swift
//  Shared
//
//  Created by USER on 2023/01/06.
//

import SwiftUI

struct HomeView: View {
    let user: User
    let plants: [Plant]
    var body: some View {
        VStack(alignment: .leading) {
            HomeHeaderView(user: user)
            HStack {
                Text("Need water")
                Spacer()
                Text("see all")
                    .font(.caption)
                Label("", systemImage: "arrow.right")
                    .font(.system(size: 10))
            }
            .padding()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(plants, id: \.self) { plant in
                        PlantImageWithName(plant: plant)
                    }
                }
            }
            HStack {
                Text("My plants")
                Spacer()
                Text("see all")
                    .font(.caption)
                Label("", systemImage: "arrow.right")
                    .font(.system(size: 10))
            }
            .padding()
            ScrollView(.horizontal) {
                HStack {
                    Image("plant1")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Image("plant2")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Image("plant3")
                        .resizable()
                        .frame(width: 150, height: 150)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(user: User.sampleData, plants: Plant.sampleData)
    }
}
