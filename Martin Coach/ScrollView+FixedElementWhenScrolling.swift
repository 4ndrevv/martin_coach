//
//  File.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 20/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

extension ScrollView {
    func fixedElementWhenScrolling() -> some View {
        GeometryReader { geometry in
            self
                .modifier(FixedElementWhenScrollingModifier(scrollOffsetY: geometry.frame(in: .global).minY))
        }
    }
}

struct FixedElementWhenScrollingModifier: ViewModifier {
    let scrollOffsetY: CGFloat
    
    func body(content: Content) -> some View {
        content
            .offset(y: max(-scrollOffsetY, 0))
    }
}

