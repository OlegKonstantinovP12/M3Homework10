//
//  GrayButton.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

struct GrayButton: View {
    var image: Image
    var completion: ()-> Void
    var body: some View {
        Button {
            completion()
        } label: {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(.appBlack)
                .padding(10)
                .background(.antiFlashWhite)
                .clipShape(Circle())
        }
    }
}

#Preview {
    GrayButton(image: Image(.carIcon), completion: { })
}
