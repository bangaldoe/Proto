//
//  LargePlantsImageView.swift
//  Proto
//
//  Created by USER on 2023/01/06.
//

import SwiftUI

struct ImageOverlay: View {
    let plant: Plant
    var body: some View {
        ZStack {
            Text(plant.name+"\nD+324")
                .font(.title)
                .padding(6)
                .foregroundColor(.white)
        }
    }
}

struct PlantImageWithName: View {
    let plant: Plant
    var body: some View {
        VStack {
            Image(plant.profileImage)
                .resizable()
                .frame(width: 200, height: 200)
                .overlay(ImageOverlay(plant: plant), alignment: .bottomLeading)
        }

    }
}

struct PlantImageWithName_Previews: PreviewProvider {
    static var previews: some View {
        PlantImageWithName(plant: Plant.sampleData[0])
    }
}
