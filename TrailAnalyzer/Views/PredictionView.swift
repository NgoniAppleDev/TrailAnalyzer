//
//  PredictionView.swift
//  TrailAnalyzer
//
//  Created by Ngoni Katsidzira  on 15/7/2026.
//

import SwiftUI

struct PredictionView: View {
    
    @State var predictedRisk: Risk
    
    var body: some View {
        VStack {
            RiskCard(risk: predictedRisk)
            Spacer()
        }
        .navigationTitle("Results")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    riskSummaryView
                } label: {
                    Image(systemName: "info.circle")
                }
            }
        }
        .trailTheme()
    }
    
    var riskSummaryView: some View {
        ScrollView(showsIndicators: false) {
            ForEach(Risk.allCases) {
                RiskCard(risk: $0)
            }
        }
        .trailTheme()
        .navigationTitle("Risk Summary")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PredictionView(predictedRisk: .moderate)
    }
}
