//
//  RouterWithViewTriggersApp.swift
//  RouterWithViewTriggers
//
//  Created by Ihor Vovk on 20.09.2020.
//

import SwiftUI

@main
struct RouterWithViewTriggersApp: App {
    var body: some Scene {
        WindowGroup {
            PresentingView(router: PresentingRouter())
        }
    }
}
