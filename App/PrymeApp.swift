//
//  PrymeApp.swift
//  Pryme
//
//  Created by Denis on 07.09.2026.
//

import SwiftUI
import SwiftData

@main
struct PrymeApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(for: Exercise.self)
    }
}
