//
//  TitleStyle.swift
//  Pryme
//
//  Created by Denis on 15.09.2026.
//

import SwiftUI

struct ListTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 36, weight: .bold))
            .foregroundStyle(Color("PrymeTextPrimary"))
            .listRowBackground(Color.clear)
            .listRowInsets(EdgeInsets())
            .listRowSeparator(.hidden)
    }
}

extension View {
    func listTitleStyle() -> some View {
        modifier(ListTitleStyle())
    }
}
