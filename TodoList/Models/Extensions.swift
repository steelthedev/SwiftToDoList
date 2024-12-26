//
//  Extensions.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import Foundation

extension Encodable{
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        return try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
    }
}
