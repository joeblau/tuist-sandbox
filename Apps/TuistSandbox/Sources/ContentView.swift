//
//  ContentView.swift
//  TuistSandbox
//
//  Created by Joe Blau on 12/26/20.
//

import SwiftUI
import Shared_iOS

struct ContentView: View {
    var body: some View {
        Text("Hello, world! \(SharedStruct())")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
