//
//  CustomButton.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//
import SwiftUI

struct CustomButton: View {
    var title: String
    var image: Image
    var completion: ()-> Void
    var body: some View {
        Button {
            completion()
        } label: {
            HStack(spacing: 8) {
                Text(title)
                    .poppins(.medium, size: 16)
                    .foregroundStyle(.appWhite)
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.appWhite)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .background(LinearGradient(colors: [.shockingOrange, .willpowerOrange], startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
        }
    }
}


