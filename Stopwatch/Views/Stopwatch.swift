//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Satish Chhatpar on 23/09/21.
//

import SwiftUI

@main
struct StopwatchMainApp: App {
    var mins: Int = 0
    var secs: Int = 0
    var body: some Scene {
        WindowGroup {           
            TestTimerZView(minutes: mins, seconds: secs)
        }
    }
}

