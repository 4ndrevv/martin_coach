//
//  progress_struct.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct progress_struct: Identifiable {
    var id = UUID().uuidString
    var name_activity: String
    var color_activity: Color
    var distance_activity: Double
    var time_activity: Double
    var calorie_activity: Double
    var animate: Bool = false
}

var sample_analytics_2: [progress_struct] = [
    progress_struct(name_activity: "Walking", color_activity: Color.green, distance_activity: 2, time_activity: 30, calorie_activity: 13),
    progress_struct(name_activity: "Running", color_activity: Color.red, distance_activity: 1, time_activity: 20, calorie_activity: 10),
    progress_struct(name_activity: "Jogging", color_activity: Color.purple, distance_activity: 1, time_activity: 13, calorie_activity: 3)
]
