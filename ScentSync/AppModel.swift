//
//  AppModel.swift
//  ScentSync
//
//  Created by iya student on 11/18/25.
//

import SwiftUI

/// Maintains app-wide state
@MainActor
@Observable
class AppModel {
    // Immersive Space IDs for different scents
    static let springtimeImmersiveSpaceID = "SpringtimeImmersiveSpace"
    static let lazySundayImmersiveSpaceID = "LazySundayImmersiveSpace"
    
    // Current selected scent for immersive experience
    var currentScentImmersiveSpaceID: String? = nil
    
    enum ImmersiveSpaceState {
        case closed
        case inTransition
        case open
    }
    var immersiveSpaceState = ImmersiveSpaceState.closed
    
    // Get immersive space ID for a specific scent
    func immersiveSpaceID(for scentTitle: String) -> String {
        switch scentTitle {
        case "Springtime In A Park":
            return AppModel.springtimeImmersiveSpaceID
        case "Lazy Sunday Morning":
            return AppModel.lazySundayImmersiveSpaceID
        default:
            return AppModel.springtimeImmersiveSpaceID // Default fallback
        }
    }
}
