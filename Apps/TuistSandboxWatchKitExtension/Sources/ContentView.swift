//
//  ContentView.swift
//  TuistSandbox WatchKit Extension
//
//  Created by Joe Blau on 12/26/20.
//

import SwiftUI
import Shared_watchOS

struct ContentView: View {
    var body: some View {
        Text("Hello, World! \(SharedStruct())")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
