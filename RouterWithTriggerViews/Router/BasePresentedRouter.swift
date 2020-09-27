//
//  BasePresentedRouter.swift
//  RouterWithViewTriggers
//
//  Created by Ihor Vovk on 26.09.2020.
//

import SwiftUI

class BasePresentedRouter: PresentedRouter {
    
    let isPresented: Binding<Bool>
    
    init(isPresented: Binding<Bool>) {
        self.isPresented = isPresented
    }
}
