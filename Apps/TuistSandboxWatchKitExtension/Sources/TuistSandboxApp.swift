//
//  TuistSandboxApp.swift
//  TuistSandbox WatchKit Extension
//
//  Created by Joe Blau on 12/26/20.
//

import SwiftUI

@main
struct TuistSandboxApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
