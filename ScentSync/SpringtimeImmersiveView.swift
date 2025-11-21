//
//  SpringtimeImmersiveView.swift
//  ScentSync
//
//  Created by iya student on 11/18/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SpringtimeImmersiveView: View {
    @Environment(AppModel.self) var appModel

    var body: some View {
        RealityView { content in
            // Add the Springtime immersive content
            // TODO: Replace "Immersive" with your Springtime-specific scene name from Reality Composer Pro
            if let immersiveContentEntity = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
        }
    }
}

#Preview(immersionStyle: .full) {
    SpringtimeImmersiveView()
        .environment(AppModel())
}

