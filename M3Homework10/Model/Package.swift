//
//  Package.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import Foundation

struct Package: Identifiable, Hashable {
    var id: String = UUID().uuidString
    let trackNumber: String
    let shipFrom: String
    let shipTo: String
    let transitStatus: String
    let shipTime: String
}

struct ConvertPackage: Identifiable {
    var id: String { UUID().uuidString }
    let trackCode: String
    let trackNumber: String
    let shipFrom: String
    let shipTo: String
    let date: String
    let status: TrackStatus
}
