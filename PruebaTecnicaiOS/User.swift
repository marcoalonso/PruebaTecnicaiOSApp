//
//  User.swift
//  PruebaTecnicaiOS
//
//  Created by Marco Alonso Rodriguez on 14/05/24.
//

import Foundation

struct UserResponse: Codable {
    let results: [Users]
    let info: Info
}

// MARK: - Info
struct Info: Codable {
}

// MARK: - Result
struct Users: Codable {
    let gender: String
    let name: Name
    let picture: Picture
}

struct Picture: Codable {
    let large: String
}

struct Name: Codable {
    let title: String
    let first: String
    let last: String
}

struct UserData: Identifiable, Hashable {
    let id = UUID() // Generamos un UUID único como identificador
    let gender: String
    let name: String
    let pictureURL: String

    init(from user: Users) {
        self.gender = user.gender
        self.name = "\(user.name.title). \(user.name.first) \(user.name.last)"
        self.pictureURL = user.picture.large
    }
}

extension UserData {
    static func == (lhs: UserData, rhs: UserData) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

