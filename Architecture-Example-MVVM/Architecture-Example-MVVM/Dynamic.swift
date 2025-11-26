//
//  Dynamic.swift
//  Architecture-Example-MVVM
//
//  Created by  Alexander Fedoseev on 25.11.2025.
//

import Foundation

final class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
}
