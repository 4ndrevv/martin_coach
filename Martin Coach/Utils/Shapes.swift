//
//  Shapes.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 23/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct Arc : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX-1, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX+1, y: rect.minY), control: CGPoint(x:rect.midX, y:rect.midY))
        
        path.addLine(to: CGPoint(x: rect.maxX+1, y: rect.maxY+1))
        path.addLine(to: CGPoint(x: rect.minX-1, y: rect.maxY+1))
        path.closeSubpath()
        
        return path
    }
}
