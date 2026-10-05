//
//  PrimaryButton.swift
//  Pryme
//
//  Created by Denis on 11.09.2026.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundStyle(Color("PrymeDarkTextPrimary"))
                .frame(maxWidth: .infinity)
                .frame(height: 75)
                .background(
                    Color("PrymePrimary")
                )
                .clipShape(Capsule())
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    PrimaryButton(title: "+ Add excersice") {
        print("Tapped")
    }
}
