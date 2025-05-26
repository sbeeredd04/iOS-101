//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Sri Ujjwal Reddy B on 5/6/25.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                
                //Vstack for the seconds elapsed
                VStack {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                        .labelStyle(.trailingIcon)
                }
                
                //Spacer
                Spacer()
                
                //Vstack for the seconds remaining
                VStack {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                        .labelStyle(.trailingIcon)
                }
            }
            
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            //Circle for the progress
            Circle()
                .strokeBorder(lineWidth: 24)
                
            HStack {
                
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                
                .accessibilityLabel("Next speaker")
                
            }
            
            .padding()
        }
    }
}

#Preview {
    MeetingView()
}
