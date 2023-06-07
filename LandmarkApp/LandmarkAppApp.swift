//
//  LandmarkAppApp.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 05/06/23.
//

import SwiftUI

@main
struct LandmarkAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
