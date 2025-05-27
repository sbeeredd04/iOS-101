//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Sri Ujjwal Reddy B on 5/26/25.
//

import SwiftUI
import ThemeKit

struct ThemeView: View {
    
    let theme: Theme
    
    //var body for some View
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}


// Preview provider for ThemeView
#Preview {
    ThemeView(theme: .buttercup)
}

