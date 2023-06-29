//
//  blur.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 23/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

class UIBackdropView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackdropView {
        UIBackdropView()
    }
    
    func updateUIView(_ uiView: UIBackdropView, context: Context) {}
}
struct blur: View {
    var body: some View {
        Text("Hello")
    }
}

struct blur_Preview: PreviewProvider {
    static var previews: some View{
        blur()
    }
}
