//
//  SheetButton.swift
//  RouterWithTriggerViews
//
//  Created by Ihor Vovk on 26.09.2020.
//

import SwiftUI

struct SheetButton<CV: View, DV: View>: View {
    
    @Binding var isPresenting: Bool
    
    var contentView: () -> CV
    var destinationView: DV
    
    var body: some View {
        Button(action: {
            self.isPresenting = true
        }) {
            contentView()
                .sheet(isPresented: $isPresenting) {
                    self.destinationView
                }
        }
    }
}
