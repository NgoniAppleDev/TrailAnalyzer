//
//  TrailField.swift
//  TrailAnalyzer
//
//  Created by Ngoni Katsidzira  on 15/7/2026.
//

import SwiftUI

struct TrailField<Content: View>: View {
    
    var iconName: String
    var label: String
    @ViewBuilder var content: Content
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.trailing, 8)
            
            Text(label)
            
            Spacer()
            
            content
        }
        .padding(.vertical, 24)
        .padding(.horizontal, 16)
        .background(Color(.systemBackground), in: .rect(cornerRadius: 12))
    }
}

#Preview {
    TrailField(
        iconName: "figure.hiking",
        label: "Label"
    ) {
        Text("Content")
    }
    .trailTheme()
}
