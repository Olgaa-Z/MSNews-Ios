//
//  MSNewsApp.swift
//  MSNews
//
//  Created by visionet on 11/07/23.
//

import SwiftUI

@main
struct MSNewsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashScreen()
                
        }
    }
}
