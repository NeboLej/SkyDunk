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
            listenersNext.forEach { $0(value) }
        }
    }
    
    var error: Error? {
        didSet {
            if let  error = error {
                listenersError.forEach { $0(error) }
            }
        }
    }
    
    private var listenersNext: [(T)->Void] = []
    private var listenersError: [(Error) -> Void] = []
    
    init(value: T) {
        self.value = value
    }
    
    func subscribe(onNext: @escaping (T)->Void = { _ in }, onError: @escaping (Error)->Void = { _ in }) {
        onNext(value)
        if error != nil { onError(error!) }
        listenersNext.append(onNext)
        listenersError.append(onError)
    }
    
//    func bind<M>(listener: Observable<M>, map:  @escaping (T) -> M ) {
//        subscribe { element in
//            listener.value = map(element)
//        } onError: { elementError in
//            listener.error = elementError
//        }
//    }
//
//    func bind(listener: @escaping (T, Error?)->Void) {
//        listener(value, error)
//        listeners.append(listener)
//    }
    
}
