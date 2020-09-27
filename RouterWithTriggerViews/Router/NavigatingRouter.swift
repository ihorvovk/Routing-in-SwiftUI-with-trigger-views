//
//  NavigatingRouter.swift
//  RouterWithViewTriggers
//
//  Created by Ihor Vovk on 26.09.2020.
//

import SwiftUI

protocol NavigatingRouter: ObservableObject {
    associatedtype NavigationState
    var navigationState: NavigationState { get set }
}

extension NavigatingRouter {
    
    func binding<T>(keyPath: WritableKeyPath<NavigationState, T>) -> Binding<T> {
        Binding(get: { self.navigationState[keyPath: keyPath] }, set: { self.navigationState[keyPath: keyPath] = $0 })
    }
}
