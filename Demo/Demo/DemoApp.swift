//
//  DemoApp.swift
//  Demo
//
//  Created by 丹羽雄一朗 on 2025/03/07.
//

import GlobalAlert
import SwiftUI

@main
struct DemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .globalAlertContainer()
        }
    }
}
