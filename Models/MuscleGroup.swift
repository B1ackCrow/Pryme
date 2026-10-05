//
//  MuscleGroup.swift
//  Pryme
//
//  Created by Denis on 13.09.2026.
//

import Foundation

enum MuscleGroup : String, CaseIterable, Identifiable {
    case chest = "Chest"
    case back = "Back"
    case shoulders = "Shoulders"
    case biceps = "Biceps"
    case triceps = "Triceps"
    case forearms = "Forearms"
    case core = "Core"
    case glutes = "Glutes"
    case quadriceps = "Quadriceps"
    case hamstrings = "Hamstrings"
    case calves = "Calves"
    
    var id: String {
        rawValue
    }
}
