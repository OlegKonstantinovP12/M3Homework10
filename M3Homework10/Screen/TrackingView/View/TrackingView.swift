//
//  TrackingView.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

struct TrackingView: View {
    var viewModel: TrackingViewViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            header
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                .background(.appWhite)
                .zIndex(1)
            ScrollView {
                VStack(spacing: 20) {
                    VStack(spacing: 12) {
                        route
                            .padding(.top, 60)
                            .padding(.horizontal, 20)
                        deliveryMan
                            .padding(.horizontal, 20)
                        ForEach(viewModel.packages) { package in
                            PackageView(package: package)
                                .padding(.horizontal, 20)
                        }
                    }
                    CustomButton(title: "Tracking", image: Image(.tracking)) {
                        //
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}


//Header
extension TrackingView {
    var header: some View {
        HStack {
            GrayButton(image: Image(.carIcon)) {
            }
            Spacer()
            Text("Packages")
                .poppins(.medium, size: 16)
            Spacer()
            GrayButton(image: Image(.share)) {
                //
            }
        }
    }
}

//Route
extension TrackingView {
    var route: some View {
        Image(.imgMap)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .frame(height: 212)
            .cornerRadius(28)
            .padding(8)
            .background(.willpowerOrange.opacity(0.08))
            .cornerRadius(36)
    }
}

//DeliveryMan Contacts
extension TrackingView {
    var deliveryMan: some View {
        ForEach(viewModel.deliveryMan) { item in
            HStack {
                Image(item.avatar)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 47, height: 47)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.appWhite)
                    }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(item.number)
                        .poppins(.medium, size: 14)
                        .foregroundStyle(.boulder)
                    Text(item.name)
                        .poppins(.medium, size: 16)
                }
                Spacer()
                
                HStack(spacing: 12) {
                    ContactButton(image: Image(.messageIcon)) {
                        //
                    }
                    ContactButton(image: Image(.callIcon)) {
                        //
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(12)
            .background(.antiFlashWhite)
            .clipShape(Capsule())
        }
    }
}
