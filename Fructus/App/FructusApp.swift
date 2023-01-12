//
//  FructusApp.swift
//  Fructus
//
//  Created by Giap on 11/01/2023.
//

import SwiftUI

//main serve as entry point
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
