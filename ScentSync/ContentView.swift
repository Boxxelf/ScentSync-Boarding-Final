//
//  ContentView.swift
//  ScentSync
//
//  Created by iya student on 11/18/25.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            WelcomeView()
                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
