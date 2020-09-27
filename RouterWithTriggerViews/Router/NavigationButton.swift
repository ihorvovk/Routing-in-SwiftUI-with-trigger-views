//
//  NavigationButton.swift
//  RouterWithViewTriggers
//
//  Created by Ihor Vovk on 26.09.2020.
//

import SwiftUI

struct NavigationButton<CV: View, DV: View>: View {
    
    @Binding var isPresenting: Bool
    
    var contentView: () -> CV
    var destinationView: DV
    
    var body: some View {
        Button(action: {
            self.isPresenting = true
        }) {
            contentView()
        }.background(
            NavigationLink(destination: destinationView, isActive: $isPresenting) {
                EmptyView()
            }
        )
    }
}
