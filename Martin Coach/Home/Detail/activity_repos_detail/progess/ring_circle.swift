//
//  ring_circle.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct ring_circle: View {
    var body: some View {
        ZStack {
            ForEach(rings.indices, id: \.self) { index in
                var totalProgress: Double {
                    var progressSum: Double = 0
                    for index in 0..<index {
                        progressSum = progressSum + rings[index].progress
                    }
                    return progressSum
                }
                ZStack {
                    Circle()
                        .stroke(.gray.opacity(0), lineWidth: 25)
                    
                    if index != 0 { // Handle first ring differently since there's no previous ring
                        Circle()
                            .trim(from: totalProgress / 100, to: (totalProgress + rings[index].progress - 0.2) / 100)
                            .stroke(rings[index].keyColor, style: StrokeStyle(lineWidth: 25, lineCap: .butt, lineJoin: .round))
                            .rotationEffect(.init(degrees: -90))
                    } else { // For the first ring, just show its progress independently
                        Circle()
                            .trim(from: 0, to: (rings[index].progress - 0.2) / 100)
                            .stroke(rings[index].keyColor, style: StrokeStyle(lineWidth: 25, lineCap: .butt, lineJoin: .round))
                            .rotationEffect(.init(degrees: -90))
                    }
                }
                .padding(CGFloat(index) * 0)
            }
            .frame(width: 130, height: 130)
        }
    }
}

struct ring_circle_Previews: PreviewProvider {
    static var previews: some View {
        ring_circle()
    }
}
