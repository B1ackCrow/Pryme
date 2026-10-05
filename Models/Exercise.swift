//
//  Exercise.swift
//  Pryme
//
//  Created by Denis on 15.09.2026.
//

import Foundation
import SwiftData

@Model
final class Exercise {
    var name: String
    var muscleGroupRawValue: String

    var muscleGroup: MuscleGroup? {
        MuscleGroup(rawValue: muscleGroupRawValue)
    }

    init(name: String, muscleGroup: MuscleGroup) {
        self.name = name
        self.muscleGroupRawValue = muscleGroup.rawValue
    }
}
