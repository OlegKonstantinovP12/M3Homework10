//
//  DeliveryMan.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import Foundation

struct DeliveryMan: Identifiable {
    var id: String { UUID().uuidString }
    let name: String
    let number: String
    let avatar: String
}
