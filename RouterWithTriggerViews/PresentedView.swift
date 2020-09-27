//
//  PresentedView.swift
//  RouterWithViewTriggers
//
//  Created by Ihor Vovk on 26.09.2020.
//

import SwiftUI

struct PresentedView: View {
    
    private let text: String
    private let router: PresentedRouter
    
    init(text: String, router: PresentedRouter) {
        self.text = text
        self.router = router
    }
    
    var body: some View {
        VStack {
            Button {
                router.dismiss()
            } label: {
                Text(text)
                    .padding()
            }
        }
    }
}

struct PresentedView_Previews: PreviewProvider {
    static var previews: some View {
        PresentedView(text: "Text", router: BasePresentedRouter(isPresented: .constant(true)))
    }
}
