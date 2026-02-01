//
//  OnboardingView.swift
//  M3Homework10
//
//  Created by Oleg Konstantinov on 01.02.2026.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject var viewModel = TrackingViewViewModel()
    @State var path: NavigationPath = NavigationPath()
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 89) {
                VStack(spacing: 28) {
                    textHeader
                    
                    VStack(spacing: 16) {
                        Image(.onboardImg)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 331)
                            .frame(maxWidth: .infinity)
                        
                        HStack(spacing: 4) {
                            Text("\(viewModel.packageCount) active packages")
                                .poppins(.medium, size: 12)
                                .foregroundStyle(.authenticBlack)
                            
                            HStack(spacing: -5) {
                                ForEach(viewModel.packages) { item in
                                    StatusCircle(status: item.status)
                                }
                            }
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(.antiFlashWhite)
                        .clipShape(Capsule())
                    }
                }
                
                CustomButton(title: "Check your packages", image: Image(systemName: "arrow.right.circle.fill"), completion: {
                    path.append(1)
                })
                .padding(.horizontal, 20)
                .navigationDestination(for: Int.self) { _ in
                    TrackingView(viewModel: viewModel)
                        .toolbar(.hidden)
                }
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            .background(.appWhite)
            .onAppear {
                viewModel.getPackage()
            }
        }
    }
}

#Preview {
    OnboardingView()
}

// Header
extension OnboardingView {
    var textHeader: some View {
        VStack(spacing: 4) {
            HStack(spacing: 8) {
                Image(.boxIcon)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.willpowerOrange)
                Text("3000+ Successful Delivery")
                    .poppins(.medium, size: 16)
                    .foregroundStyle(.willpowerOrange)
            }
            VStack(spacing: 0) {
                Text("Your Ultimate")
                    .poppins(.regular, size: 28)
                    .foregroundStyle(.authenticBlack)
                Text("Shipping Company")
                    .poppins(.semiBold, size: 28)
                    .foregroundStyle(LinearGradient(colors: [.shockingOrange, .willpowerOrange], startPoint: .leading, endPoint: .trailing))
            }
        }
    }
}
