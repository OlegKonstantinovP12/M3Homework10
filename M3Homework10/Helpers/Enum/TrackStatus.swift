//
//  TrackStatus.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import Foundation

enum TrackStatus: String {
    case transit = "transit"
    case arrived = "arrived"

    func getColorStatusBackground() -> String {
        switch self {
        case .transit:
            return "babyPeach"
        case .arrived:
            return "mintChocoChip"
        }
    }
    
    func getColorStatus() -> String {
        switch self {
        case .transit:
            return "willpowerOrange"
        case .arrived:
            return "crispyMintGreen"
        }
    }
}
