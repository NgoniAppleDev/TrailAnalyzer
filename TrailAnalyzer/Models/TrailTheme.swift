//
//  TrailTheme.swift
//  TrailAnalyzer
//
//  Created by Ngoni Katsidzira  on 15/7/2026.
//

import SwiftUI

struct TrailTheme: ViewModifier {
    
    func body(content: Content) -> some View {
        ZStack {
            VStack {
                Image(.background)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                    .offset(y: -140)
                
                Spacer()
            }
            
            content
                .padding(.horizontal)
        }
        .background(Color(.secondarySystemBackground))
    }
}

extension View {
    
    func trailTheme() -> some View {
        modifier(TrailTheme())
    }
}

#Preview {
    Text("Hello, World!")
        .trailTheme()
}


