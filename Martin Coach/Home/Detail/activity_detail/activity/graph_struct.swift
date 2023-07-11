//
//  chart_struct.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct graph_struct: Identifiable {
    var id = UUID().uuidString
    var hour: Date
    var calorie: Double
    var animate: Bool = false
}

extension Date {
    func updateHour(value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(bySettingHour: value, minute: 0, second: 0, of: self) ?? .now
    }
}

var sample_analytics: [graph_struct] = [
    graph_struct(hour:Date().updateHour(value: 8), calorie: 5),
    graph_struct(hour:Date().updateHour(value: 10), calorie: 0),
    graph_struct(hour:Date().updateHour(value: 12), calorie: 34),
    graph_struct(hour:Date().updateHour(value: 14), calorie: 2),
    graph_struct(hour:Date().updateHour(value: 16), calorie: 23),
    graph_struct(hour:Date().updateHour(value: 18), calorie: 0),
    graph_struct(hour:Date().updateHour(value: 20), calorie: 90),
    graph_struct(hour:Date().updateHour(value: 22), calorie: 5),
   
    
]
