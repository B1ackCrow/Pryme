//
//  ExercisesView.swift
//  Pryme
//
//  Created by Denis on 13.09.2026.
//

import SwiftUI

struct ExercisesView: View {
    var body: some View {
        
        List {
            Text("Exercises").listTitleStyle()
            
            Section {
                ForEach(MuscleGroup.allCases) {
                    group in
                    NavigationLink {
                        ExerciseGroupView(group: group)
                    } label: {
                        Text(group.rawValue)
                            .foregroundStyle(Color("PrymeTextPrimary"))
                            .padding(.leading, 10)
                    }
                    .listRowBackground(Color("PrymeItem"))
                    .frame(height: 64)
                }
            }
        }
        .listStyle(.insetGrouped)
        .scrollContentBackground(.hidden)
        .background(Color("PrymeBackground"))
    }
}

#Preview {
    ExercisesView()
}
