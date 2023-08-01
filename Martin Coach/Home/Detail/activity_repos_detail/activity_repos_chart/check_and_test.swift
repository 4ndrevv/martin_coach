//
//  check_and_test.swift
//  Martin Coach
//
//  Created by Nam on 27/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI
import Charts

import SwiftUI
import Charts

struct BarChartView: View {
    var data: [graph_struct_repos_test]
    var barWidth: CGFloat = 30 // Adjust the width of the bars as needed
    var barSpacing: CGFloat = 10 // Adjust the spacing between bars as needed

    private func getDateFormatter() -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: barSpacing) {
                ForEach(data) { item in
                    VStack {
                        Rectangle()
                            .fill(Color.blue) // Customize the bar color as needed
                            .frame(width: barWidth, height: CGFloat(item.time_end - item.time_start) / 3600.0)
                            .cornerRadius(8)
                            .overlay(
                                Text("\(getDateFormatter().string(from: Date(timeIntervalSince1970: TimeInterval(item.time_start)))) - \(getDateFormatter().string(from: Date(timeIntervalSince1970: TimeInterval(item.time_end))))")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            )
                    }
                }
            }
            .padding(.horizontal, 16) // Add horizontal padding to the chart
        }
    }
}

struct check_and_test: View {
    var sample_analytics_test: [graph_struct_repos_test] = [
        graph_struct_repos_test(time_start: 1690162200, time_end: 1690165800), // 24/7/2023 8h30 - 9h30
        graph_struct_repos_test(time_start: 1690176000, time_end: 1690180800), // 24/7/2023 12h20 - 13h40
        graph_struct_repos_test(time_start: 1690193400, time_end: 1690206900), // 24/7/2023 17h10 - 20h55
        graph_struct_repos_test(time_start: 1690248900, time_end: 1690254600),
        graph_struct_repos_test(time_start: 1690296000, time_end: 1690301400)
    ]

    var body: some View {
        BarChartView(data: sample_analytics_test)
    }
}

struct check_and_test_Previews: PreviewProvider {
    static var previews: some View {
        check_and_test()
    }
}
