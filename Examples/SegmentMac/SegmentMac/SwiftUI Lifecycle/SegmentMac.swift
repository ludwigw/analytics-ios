//
//  SegmentMac.swift
//  Shared
//

import SwiftUI
import Segment

@main
struct SegmentMac: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        
        // Configure Segment
        let configuration = AnalyticsConfiguration(writeKey: "8XpdAWa7qJVBJMK8V4FfXQOrnvCzu3Ie")
        configuration.trackApplicationLifecycleEvents = true // Enable this to record certain application events automatically!
        configuration.trackInAppPurchases = true
        Analytics.setup(with: configuration)
        
        Analytics.shared().screen("SegmentMac")
    }
    
}
