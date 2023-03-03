//
//  TesteCadastroApp.swift
//  TesteCadastro
//
//  Created by Aloisio on 03/03/23.
//

import SwiftUI

@main
struct TesteCadastroApp: App {
    let persistenceContoller = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContoller.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceContoller.save()
        }
    }
}
