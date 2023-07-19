//
//  Now_n__NextApp.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

@main
struct Now_n__NextApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            Home().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
