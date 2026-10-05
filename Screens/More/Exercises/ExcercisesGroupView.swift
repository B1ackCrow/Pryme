//
//  ExcercisesGroupView.swift
//  Pryme
//
//  Created by Denis on 13.09.2026.
//

import SwiftUI
import SwiftData

struct ExerciseGroupView: View {
    let group: MuscleGroup
    
    @Query private var exercises: [Exercise]
    
    private var groupExercises: [Exercise] {
        exercises.filter { exercise in
            exercise.muscleGroup == group
        }
    }
    
    var body: some View {
        List {
            Text().listTitleStyle()
            
            ForEach(groupExercises) { exercise in
                NavigationLink {
                    ExerciseDetailView(exercise: exercise)
                } label: {
                    Text(exercise.name)
                }
            }
            
            NavigationLink {
                CreateExerciseView(muscleGroup: group)
            } label: {
                Label("Create exercise", systemImage: "plus")
            }
        }
        

    }
}
