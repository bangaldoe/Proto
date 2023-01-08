//
//  User.swift
//  Proto
//
//  Created by USER on 2023/01/08.
//

import Foundation

struct User {
    var name: String
    var profileImage: String
}

extension User {
    static let sampleData: User = User(name: "hamdoe", profileImage: "hamster")
}
