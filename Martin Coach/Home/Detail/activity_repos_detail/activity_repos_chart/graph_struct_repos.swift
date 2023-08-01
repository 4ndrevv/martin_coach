//
//  graph_struct_repos.swift
//  Martin Coach
//
//  Created by Nam on 25/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct graph_struct_repos: Identifiable {
    var id = UUID().uuidString
    var hour: Date
    var repos: Double
    var animate: Bool = false
}

extension Date {
    func updateHour_2(value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(bySettingHour: value, minute: 0, second: 0, of: self) ?? .now
    }
}

var sample_analytics_4: [graph_struct_repos] = [
    graph_struct_repos(hour:Date().updateHour(value: 8), repos: 7),
    graph_struct_repos(hour:Date().updateHour(value: 10), repos: 0),
    graph_struct_repos(hour:Date().updateHour(value: 12), repos: 34),
    graph_struct_repos(hour:Date().updateHour(value: 14), repos: 2),
    graph_struct_repos(hour:Date().updateHour(value: 16), repos: 23),
    graph_struct_repos(hour:Date().updateHour(value: 18), repos: 0),
    graph_struct_repos(hour:Date().updateHour(value: 20), repos: 90),
    graph_struct_repos(hour:Date().updateHour(value: 22), repos: 5),
    graph_struct_repos(hour:Date().updateHour(value: 21), repos: 5),
    graph_struct_repos(hour:Date().updateHour(value: 6), repos: 5),
    graph_struct_repos(hour:Date().updateHour(value: 9), repos: 5),
    graph_struct_repos(hour:Date().updateHour(value: 13), repos: 5),
    graph_struct_repos(hour:Date().updateHour(value: 17), repos: 5),
    graph_struct_repos(hour:Date().updateHour(value: 1), repos: 5),
    
    
]

