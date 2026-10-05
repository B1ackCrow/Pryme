//
//  HomeView.swift
//  Pryme
//
//  Created by Denis on 11.09.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("PRYME")
                    .font(.system(size: 28, weight: .semibold, design: .default)
                        .width(.expanded)
                    )
                    .tracking(7)
                    .foregroundStyle(Color("PrymeTextPrimary"))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
                
                VStack(alignment: .leading, spacing: 30) {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Ready to train?")
                            .font(.system(size: 45, weight: .medium))
                            .foregroundStyle(Color("PrymeTextPrimary"))
                        Text("Start a workout and add exercises as you go.")
                            .font(.system(size: 25, weight: .light))
                            .foregroundStyle(Color("PrymeTextPrimary"))
                    }
                    PrimaryButton(title: "Start workout") {
                    }
                }
                
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 25)
                .background {
                    ZStack {
                        Color("PrymeBackground")
                        Image("HomeBackground")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea(.all)
                    }
                }
    }
}

#Preview {
    HomeView()
}
