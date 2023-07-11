//
//  ring_circle_2_struct.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct ring_circle_2_struct: Identifiable {
    var id = UUID().uuidString
    var hour: Date
    var calorie: Double
    var animate: Bool = false
}

var sample_analytics_3: [ring_circle_2_struct] = [
    ring_circle_2_struct(hour:Date().updateHour(value: 8), calorie: 5),
    ring_circle_2_struct(hour:Date().updateHour(value: 10), calorie: 0),
    ring_circle_2_struct(hour:Date().updateHour(value: 12), calorie: 34),
    ring_circle_2_struct(hour:Date().updateHour(value: 14), calorie: 2),
    ring_circle_2_struct(hour:Date().updateHour(value: 16), calorie: 23),
    ring_circle_2_struct(hour:Date().updateHour(value: 18), calorie: 0),
    ring_circle_2_struct(hour:Date().updateHour(value: 20), calorie: 90),
    ring_circle_2_struct(hour:Date().updateHour(value: 22), calorie: 5),
   
    
]

