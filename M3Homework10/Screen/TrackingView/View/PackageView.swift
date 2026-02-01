//
//  PackageView.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

struct PackageView: View {
    var package: ConvertPackage
    var body: some View {
        VStack(spacing: 16) {
            
            //Image and track number
            HStack {
                Image(.imgBox)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 118, height: 93)
                Spacer()
                VStack(alignment: .trailing,spacing: 0) {
                    Text(package.trackCode)
                        .poppins(.medium, size: 24)
                    Text(package.trackNumber)
                        .poppins(.regular, size: 24)
                }
                .frame(alignment: .trailing)
            }
            
            //From - To
            HStack {
                InfoPackTextView(title: "From", description: package.shipFrom)
                Spacer()
                InfoPackTextView(title: "To", description: package.shipTo, alignment: .trailing)
            }
            
            //Ship time
            HStack {
                HStack(spacing: 4) {
                    Text(package.status.rawValue.capitalized)
                        .foregroundStyle(Color(package.status.getColorStatus()))
                        .poppins(.medium, size: 12)
                    StatusCircle(status: package.status)
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 12)
                .background(Color(package.status.getColorStatusBackground()))
                .cornerRadius(40)
                Spacer()
                InfoPackTextView(title: "Date", description: package.date, alignment: .trailing)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(20)
        .getBackgroundColor(type: package.status)
        .cornerRadius(36)
    }
}

#Preview {
    PackageView(package: ConvertPackage(trackCode: "#ER-ML", trackNumber: "550-145-17L", shipFrom: "London, UK", shipTo: "Kaliningrad, RU", date: "14.06.2025", status: .transit))
}

