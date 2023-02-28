//
//  PerfumeDiscographyApp.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/22
//  
//

import SwiftUI

@main
struct PerfumeDiscographyApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
