//
//  shamma_alkaabiApp.swift
//  shamma alkaabi
//
//  Created by shamma  on 24/06/2023.
//

import SwiftUI

@main
struct shamma_alkaabiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
