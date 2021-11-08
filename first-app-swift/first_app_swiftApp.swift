//
//  first_app_swiftApp.swift
//  first-app-swift
//
//  Created by Jose Manuel Barba Sánchez on 3/11/21.
//

import SwiftUI

@main
struct first_app_swiftApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
