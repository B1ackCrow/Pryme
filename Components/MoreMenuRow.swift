//
//  MoreMenuRow.swift
//  Pryme
//
//  Created by Denis on 13.09.2026.
//

import SwiftUI

struct MoreMenuRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
            
            Spacer()
            
            Text(title)
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal, 20)
        .frame(height: 72)
    }
}
