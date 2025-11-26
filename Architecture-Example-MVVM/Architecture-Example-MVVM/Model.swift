//
//  Model.swift
//  Architecture-Example-MVVM
//
//  Created by  Alexander Fedoseev on 25.11.2025.
//

import Foundation

struct Model {
    enum Light: String {
        case red = "RED"
        case yellow = "YELLOW"
        case green = "GREEN"
    }
    enum Direction {
        case up
        case down
    }
    var currentLight: Light = .red
    var direction: Direction = .down
}
