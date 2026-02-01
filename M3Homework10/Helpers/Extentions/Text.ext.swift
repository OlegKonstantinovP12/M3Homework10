//
//  Text.ext.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI



extension Text {
    func poppins(_ type: Poppins, size: CGFloat) -> some View {
        self
            .font(.custom(type.rawValue, size: size))
    }
}
