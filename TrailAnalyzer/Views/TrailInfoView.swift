//
//  TrailInfoView.swift
//  TrailAnalyzer
//
//  Created by Ngoni Katsidzira  on 15/7/2026.
//

import SwiftUI

struct TrailInfoView: View {
    
    @Binding var trailInfo: TrailInfo
    
    var body: some View {
        
        Form {
            Section("Distance") {
                TextField("kilometers", value: $trailInfo.distance, format: .number)
                    .keyboardType(.numberPad)
            }
            
            Section("Elevation Change") {
                TextField("meters", value: $trailInfo.elevation, format: .number)
                    .keyboardType(.numberPad)
            }
            
            Section {
                Picker("Terrain", selection: $trailInfo.terrain) {
                    ForEach(Terrain.allCases) { terrain in
                        Text(terrain.rawValue.capitalized)
                            .tag(terrain)
                    }
                }
            }
            
            Section("Danger from wildlife") {
                Picker("Danger from wildlife", selection: $trailInfo.wildlifeDangerLevel) {
                    Text("Low")
                        .tag(TrailInfo.lowDanger)
                    Text("High")
                        .tag(TrailInfo.highDanger)
                }
                .pickerStyle(.segmented)
                .controlSize(.extraLarge)
            }
        }
    }
}

#Preview {
    @Previewable @State var trailInfo = TrailInfo.empty
    TrailInfoView(trailInfo: $trailInfo)
}
