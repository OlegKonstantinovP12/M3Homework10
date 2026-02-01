//
//  TrackingViewViewModel.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import Foundation
import Combine

class TrackingViewViewModel: ObservableObject {
    @Published var packages: [ConvertPackage] = []
    @Published var deliveryMan: [DeliveryMan] = []
    var packageCount: Int { packages.count }
    
    func getPackage() {
        let requestPackage = NetworkManager().getPackage()
    
        packages = requestPackage.map(
            { item in
                return ConvertPackage(
                    trackCode: String(item.trackNumber.prefix(6)),
                    trackNumber: String(item.trackNumber.dropFirst(6)),
                    shipFrom: item.shipFrom,
                    shipTo: item.shipTo,
                    date: convertDate(item.shipTime) ?? "No date",
                    status: getStatus(string: item.transitStatus)
                )
        })
    }
    
    func getDeliveryMan() {
        let requestDeliveryMan = NetworkManager().getDeliveryMan()
        deliveryMan = requestDeliveryMan
    }
    
    private func convertDate(_ string: String) -> String? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter.locale = Locale(identifier: "UTC")
        
        guard let date = formatter.date(from: string) else { return nil }
        
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "dd.MM.yyyy"
        return outputFormatter.string(from: date)
    }
    
    private func getStatus(string: String) -> TrackStatus {
        guard let status = TrackStatus(rawValue: string.lowercased()) else { return .transit }
        
        switch status {
        case .transit:
            return TrackStatus.transit
        case .arrived:
            return TrackStatus.arrived
        }
    }
}
