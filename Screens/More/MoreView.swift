//
//  MoreView.swift
//  Pryme
//
//  Created by Denis on 11.09.2026.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Text("More").listTitleStyle()
                    
                    Section {
                        NavigationLink {
                            ExercisesView()
                        } label: {
                            Label("Exercises", systemImage: "dumbbell")
                                .foregroundStyle(Color("PrymeTextPrimary"))
                                .padding(.leading, 10)
                        }
                        .listRowBackground(Color("PrymeItem"))
                        .frame(height: 64)
                        
                        NavigationLink {
                            WorkoutTemplatesView()
                        } label: {
                            Label("Workout templates", systemImage: "list.clipboard")
                                .foregroundStyle(Color("PrymeTextPrimary"))
                                .padding(.leading, 10)
                        }
                        .listRowBackground(Color("PrymeItem"))
                        .frame(height: 64)
                        
                        NavigationLink {
                            WorkoutTemplatesView()
                        } label: {
                            Label("Timer", systemImage: "timer")
                                .foregroundStyle(Color("PrymeTextPrimary"))
                                .padding(.leading, 10)
                        }
                        .listRowBackground(Color("PrymeItem"))
                        .frame(height: 64)
                        
                        NavigationLink {
                            WorkoutTemplatesView()
                        } label: {
                            Label("Settings", systemImage: "gearshape")
                                .foregroundStyle(Color("PrymeTextPrimary"))
                                .padding(.leading, 10)
                        }
                        .listRowBackground(Color("PrymeItem"))
                        .frame(height: 64)
                    }
                    footer: {
                       VStack(spacing: 8) {
                           Text("DISCIPLINE TODAY")
                           Text("A STRONGER TOMORROW")
                       }
                       .font(.system(size: 12, weight: .medium))
                       .tracking(3)
                       .foregroundStyle(Color("PrymeTextPrimary"))
                       .opacity(0.35)
                       .frame(maxWidth: .infinity)
                       .padding(.top, 50)
                   }
                
                    
            }
        
            }
            .listStyle(.insetGrouped)
            .scrollContentBackground(.hidden)
            .background(Color("PrymeBackground"))
        }
    }
}

#Preview {
    MoreView()
}
