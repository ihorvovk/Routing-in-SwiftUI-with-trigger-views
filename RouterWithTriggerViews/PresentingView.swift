//
//  ContentView.swift
//  RouterWithViewTriggers
//
//  Created by Ihor Vovk on 20.09.2020.
//

import SwiftUI

protocol PresentingRouterProtocol: NavigatingRouter {
    func presentDetails<TV: View>(text: String, triggerView: @escaping () -> TV) -> AnyView
}

struct PresentingView<R: PresentingRouterProtocol>: View {
    
    @StateObject private var router: R
    
    init(router: R) {
        _router = StateObject(wrappedValue: router)
    }
    
    var body: some View {
        NavigationView {
            router.presentDetails(text: "Details") {
                Text("Present Details")
                    .padding()
            }
        }
    }
}

struct PresentingView_Previews: PreviewProvider {
    static var previews: some View {
        PresentingView(router: PresentingRouter())
    }
}
