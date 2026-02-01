//
//  StatusCircle.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

struct StatusCircle: View {
    var status: TrackStatus
    var body: some View {
        Circle()
            .frame(width: 10, height: 10)
            .foregroundStyle(Color(status.getColorStatus()))
    }
}

#Preview {
    StatusCircle(status: .transit)
}
