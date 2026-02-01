//
//  View.ext.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat) -> some View {
        self
            .clipShape(RoundedRectangle(cornerRadius: radius))
    }
}


extension View {
    func getBackgroundColor(type: TrackStatus) -> some View {
        switch type {
        case .transit:
            return self.background(.willpowerOrange.opacity(0.08))
        case .arrived:
            return self.background(.tara)
        }
    }
}
