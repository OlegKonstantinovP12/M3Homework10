//
//  InfoPackTextView.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

struct InfoPackTextView: View {
    var title: String
    var description: String
    var alignment: HorizontalAlignment = .leading
    var body: some View {
        VStack(alignment: alignment, spacing: 0) {
            Text(title)
                .poppins(.medium, size: 14)
                .foregroundStyle(.boulder)
            Text(description)
                .poppins(.medium, size: 16)
        }
    }
}

#Preview {
    InfoPackTextView(title: "From", description: "London, UK")
}
