//
//  PresentingRouter.swift
//  RouterWithTriggerViews
//
//  Created by Ihor Vovk on 26.09.2020.
//

import SwiftUI

class PresentingRouter: PresentingRouterProtocol {

    struct NavigationState {
        var presentingDetails = false
    }
    
    @Published var navigationState = NavigationState()
    
    func presentDetails<TV: View>(text: String, triggerView: @escaping () -> TV) -> AnyView {
        let destinationView = PresentedView(text: text, router: BasePresentedRouter(isPresented: binding(keyPath: \.presentingDetails)))
        return AnyView(SheetButton(isPresenting: binding(keyPath: \.presentingDetails), contentView: triggerView, destinationView: destinationView))
    }
}
