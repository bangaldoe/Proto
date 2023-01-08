//
//  File.swift
//  Proto
//
//  Created by USER on 2023/01/08.
//

import Foundation

struct Plant: Hashable {
    var id: Int
    var name: String
    var purchaseDate: String
    var watering: Int
    var profileImage: String
}

extension Plant {
    static let sampleData: [Plant] = [
        Plant(id: 1, name: "Scindapsus", purchaseDate: "20220130", watering: 14, profileImage: "plant1"),
        Plant(id: 2, name: "Hoya", purchaseDate: "20220115", watering: 7, profileImage: "plant2"),
        Plant(id: 3, name: "Monstera", purchaseDate: "20220211", watering: 10, profileImage: "plant3"),
        Plant(id: 4, name: "Sansevieria", purchaseDate: "20211113", watering: 21, profileImage: "plant4"),
    ]
}
