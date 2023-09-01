//
//  Observable.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import Foundation

class Observable<T> {
    
    var value: T {
        didSet {
            listeners.forEach { $0(value)}
        }
    }
    
    private var listeners: [(T)->Void] = []
    
    init(value: T) {
        self.value = value
    }
    
    func bind(listener: @escaping (T)->Void) {
        listener(value)
        listeners.append(listener)
    }
}
