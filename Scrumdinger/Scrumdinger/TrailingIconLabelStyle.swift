//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Sri Ujjwal Reddy B on 5/9/25.
//

import Foundation
import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            configuration.title
            configuration.icon
            
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    
    static var trailingIcon: Self {
        Self()
    }
}
