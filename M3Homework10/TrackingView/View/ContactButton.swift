//
//  ContactButton.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

struct ContactButton: View {
    let image: Image
    var completion: ()-> Void
    var body: some View {
        Button {
            completion()
        } label: {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(14)
                .foregroundStyle(.willpowerOrange)
                .background(.appWhite)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ContactButton(image: Image(.messageIcon), completion: { })
}
