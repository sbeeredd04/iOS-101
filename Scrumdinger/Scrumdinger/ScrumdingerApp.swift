//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Sri Ujjwal Reddy B on 5/6/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
