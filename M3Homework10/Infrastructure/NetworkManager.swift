//
//  NetworkManager.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import Foundation


class NetworkManager {
    func getPackage () -> [Package] {
        [
            Package(trackNumber: "#ER-ML550-145-17L", shipFrom: "London, UK", shipTo: "Kaliningrad, RU", transitStatus: "Transit", shipTime: "2025-06-14 18:10:10"),
            Package(trackNumber: "#ER-ML271-029-33P", shipFrom: "Tokio, JP", shipTo: "Kaliningrad, RU", transitStatus: "Arrived", shipTime: "2025-12-14 18:10:10"),
        ]
    }
    
    func getDeliveryMan() -> [DeliveryMan] {
        [
            DeliveryMan(name: "User Name", number: "(900) 00-000-00", avatar: "avatar")
        ]
    }
}
