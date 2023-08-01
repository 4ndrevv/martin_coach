//
//  ring.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct ring: View {
    var body: some View {
        ZStack {
            ForEach(rings.indices, id: \.self){ index in
                ZStack{
                    Circle()
                        .stroke(.gray.opacity(0.3), lineWidth: 10)
                    Circle()
                        .trim(from: 0, to: rings[index].progress / 100)
                        .stroke(rings[index].keyColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                        .rotationEffect(.init(degrees: -90))
                }
                .padding(CGFloat(index) * 16)
            }
            .frame(width: 130, height: 130)
        }
        .padding(.leading, 10)
    }
}

struct ring_Previews: PreviewProvider {
    static var previews: some View {
        ring()
    }
}
