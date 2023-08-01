//
//  ring.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct ring: Identifiable {
    var id = UUID().uuidString
    var progress: CGFloat
    var value: String
    var keyIcon: String
    var keyColor: Color
    var isText: Bool = false
}


var rings: [ring] = [

    ring(progress: 35, value: "Walking", keyIcon: "figure.walk", keyColor: Color.green),
    ring(progress: 15, value: "Run", keyIcon: "figure.run", keyColor: Color.red),
    ring(progress: 30, value: "Jogging", keyIcon: "figure.stand", keyColor: Color.purple, isText: true)
    ]
