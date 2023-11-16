//
//  FructusApp.swift
//  Fructus
//
//  Created by İsmail Kocaoglu on 15.11.2023.
//

import SwiftUI


@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
            OnboardingView()
            } else {
                ContentView()
            }
        }
        
    }
}
