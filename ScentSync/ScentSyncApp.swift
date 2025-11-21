//
//  ScentSyncApp.swift
//  ScentSync
//
//  Created by iya student on 11/18/25.
//

import SwiftUI

@main
struct ScentSyncApp: App {
    
    @State private var appModel = AppModel()
    @State private var avPlayerViewModel = AVPlayerViewModel()
    
    var body: some Scene {
        WindowGroup {
            if avPlayerViewModel.isPlaying {
                AVPlayerView(viewModel: avPlayerViewModel)
            } else {
                ContentView()
                    .environment(appModel)
            }
        }
        
        // Springtime In A Park Immersive Space
        ImmersiveSpace(id: AppModel.springtimeImmersiveSpaceID) {
            SpringtimeImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                    avPlayerViewModel.play()
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                    avPlayerViewModel.reset()
                }
        }
        .immersionStyle(selection: .constant(.full), in: .full)
        
        // Lazy Sunday Morning Immersive Space
        ImmersiveSpace(id: AppModel.lazySundayImmersiveSpaceID) {
            LazySundayImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                    avPlayerViewModel.play()
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                    avPlayerViewModel.reset()
                }
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
