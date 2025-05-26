//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Sri Ujjwal Reddy B on 5/9/25.
//

import Foundation
import ThemeKit

//DailyScrum struct
/// A struct that represents a daily scrum meeting.
/// It contains properties for the title, attendees, length of the meeting, and the theme color.
struct DailyScrum: Identifiable {
    let id: UUID
    let title: String
    let attendees: [String]
    let lengthInMinutes: Int
    let theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(id: UUID(), title: "Design", attendees: ["John", "Jane", "Jim"], lengthInMinutes: 10, theme: .buttercup),
        DailyScrum(id: UUID(), title: "Development", attendees: ["Alice", "Bob", "Charlie"], lengthInMinutes: 15, theme: .indigo),
        DailyScrum(id: UUID(), title: "Testing", attendees: ["Dave", "Eve", "Frank"], lengthInMinutes: 20, theme: .lavender),
        DailyScrum(id: UUID(), title: "Deployment", attendees: ["Grace", "Heidi", "Ivan"], lengthInMinutes: 25, theme: .magenta),
    ]
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}
