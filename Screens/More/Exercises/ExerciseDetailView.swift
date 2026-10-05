//
//  ExerciseDetailView.swift
//  Pryme
//
//  Created by Denis on 20.09.2026.
//

import SwiftUI
import SwiftData

struct ExerciseDetailView: View {
    let exercise: Exercise
    
    @State private var name: String
    @State private var showDeleteConfirmation = false
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @Query private var exercises: [Exercise]
    
    var body: some View {
        Form {
            Section("Exercise") {
                TextField("Name", text: $name)
            }
            
            Section("Muscle group") {
                Text(exercise.muscleGroupRawValue)
            }
            
            Button("Update") {
                let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)
                
                exercise.name = trimmedName
            }
            .disabled(
                name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ||
                nameAlreadyExists
            )
            
            Section {
                Button("Delete Exercise", role: .destructive) {
                    showDeleteConfirmation = true
                }
            }
        }
        .confirmationDialog(
            "Delete Exercise?",
            isPresented: $showDeleteConfirmation,
            titleVisibility: .visible
        ) {
            Button("Delete", role: .destructive) {
                modelContext.delete(exercise)
                dismiss()
            }

            Button("Cancel", role: .cancel) { }
        } message: {
            Text("This action cannot be undone.")
        }
        .navigationTitle("Exercise")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    init(exercise: Exercise) {
        self.exercise = exercise
        _name = State(initialValue: exercise.name)
    }
    
    private var nameAlreadyExists: Bool {
        let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)

        return exercises.contains { otherExercise in
            otherExercise.id != exercise.id &&
            otherExercise.name.caseInsensitiveCompare(trimmedName) == .orderedSame
        }
    }
}
