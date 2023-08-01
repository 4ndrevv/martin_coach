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
        var totalProgress: Double = 0
        ZStack {
            ForEach(rings.indices, id: \.self) { index in
                totalProgress += rings[index].progress
                for i in 0...index {
                    totalProgress += rings[i].progress}
                ZStack {
                    Circle()
                        .stroke(.gray.opacity(0.3), lineWidth: 10)
                    
                    if index != 0 { // Handle first ring differently since there's no previous ring
                        Circle()
                            .trim(from: totalProgress / 100, to: (totalProgress + rings[index].progress) / 100)
                            .stroke(rings[index].keyColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.init(degrees: -90))
                    } else { // For the first ring, just show its progress independently
                        Circle()
                            .trim(from: 0, to: totalProgress / 100)
                            .stroke(rings[index].keyColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.init(degrees: -90))
                    }
                }
                .padding(CGFloat(index) * 14)
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
