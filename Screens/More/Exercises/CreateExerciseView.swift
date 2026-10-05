//
//  CreateExerciseView.swift
//  Pryme
//
//  Created by Denis on 15.09.2026.
//

import SwiftUI
import SwiftData

struct CreateExerciseView: View {
    let muscleGroup: MuscleGroup
    
    @State private var name = ""
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @Query private var exercises: [Exercise]
    
    var body: some View {
        Form {
            Section("Exercise") {
                TextField("Name", text: $name)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled()
                
                if nameAlreadyExists {
                    Text("Exercise with this name already exists")
                        .font(.caption)
                        .foregroundColor(.red)
                }
            }
            
            Section("Muscle group") {
                Text(muscleGroup.rawValue)
            }
            
            Button("Save") {
                let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)
                
                let exercise = Exercise(
                    name: trimmedName,
                    muscleGroup: muscleGroup
                )
                
                modelContext.insert(exercise)
                dismiss()
                
            }
            .disabled(
                name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ||
                nameAlreadyExists
            )
        }
        .navigationTitle("New Exercise")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var nameAlreadyExists: Bool {
        let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard !trimmedName.isEmpty else {
            return false
        }
        
        return exercises.contains { exercise in
            exercise.name.caseInsensitiveCompare(trimmedName) == .orderedSame
        }
    }
    
}
