//
//  ViewModel.swift
//  Architecture-Example-MVVM
//
//  Created by  Alexander Fedoseev on 25.11.2025.
//

import Foundation

final class ViewModel {
    
    private var model = Model()
    var isRedOn = Dynamic(false)
    var isYellowOn = Dynamic(false)
    var isGreenOn = Dynamic(false)
    var title = Dynamic("")
    
    func colorChanged() {
        switch model.currentLight {
        case .red, .green:
            isRedOn.value = false
            isYellowOn.value = true
            isGreenOn.value = false
            model.currentLight = .yellow
        case .yellow:
            if model.direction == .up {
                isRedOn.value = true
                isYellowOn.value = false
                isGreenOn.value = false
                model.direction = .down
                model.currentLight = .red
            } else {
                isRedOn.value = false
                isYellowOn.value = false
                isGreenOn.value = true
                model.direction = .up
                model.currentLight = .green
            }
        }
        title.value = model.currentLight.rawValue
    }
}
