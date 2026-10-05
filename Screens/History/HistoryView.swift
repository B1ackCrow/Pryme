//
//  HistoryView.swift
//  Pryme
//
//  Created by Denis on 11.09.2026.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            Text("History")
                .font(.system(size: 28, weight: .semibold, design: .default)
                )
                .tracking(7)
                .foregroundStyle(Color("PrymeTextPrimary"))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 25)
        .background(Color("PrymeBackground"))
        
    }
}

#Preview {
    HistoryView()
}
