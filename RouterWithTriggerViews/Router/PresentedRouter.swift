//
//  PresentedRouter.swift
//  RouterWithViewTriggers
//
//  Created by Ihor Vovk on 26.09.2020.
//

import SwiftUI

protocol PresentedRouter {
    var isPresented: Binding<Bool> { get }
}

extension PresentedRouter {
    
    func dismiss() {
        isPresented.wrappedValue = false
    }
}
