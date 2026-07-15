//
//  Terrain.swift
//  TrailAnalyzer
//
//  Created by Ngoni Katsidzira  on 15/7/2026.
//

import Foundation

enum Terrain: String, Identifiable, CaseIterable {
    
    case paved
    case dirt
    case rocky
    case sandy
    
    var id: String { rawValue }
}
