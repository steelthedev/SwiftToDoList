//
//  User.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
//    let password: String
    let joined: TimeInterval
}
