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

    ring(progress: 55, value: "Walking", keyIcon: "figure.walk", keyColor: Color.green),
    ring(progress: 15, value: "Run", keyIcon: "figure.run", keyColor: Color.red),
    ring(progress: 30, value: "Jogging", keyIcon: "figure.stand", keyColor: Color.purple, isText: true)
    ]

struct activity_data: Identifiable {
    var id = UUID().uuidString
    var date_start: Int // Timestamp
    var value: String
    var duration: Int //second
    
}

var activity_datas: [activity_data] = [
    activity_data(date_start: 1690851600, value: "Walking", duration: 1800), // 1/8/2023 8h00 - 30min
    activity_data(date_start: 1690855200, value: "Run", duration: 1800), // 1/8/2023 9h00 - 30min
    activity_data(date_start: 1690858800, value: "Jogging", duration: 7200) // 1/8/2023 10h00 - 120min
]
