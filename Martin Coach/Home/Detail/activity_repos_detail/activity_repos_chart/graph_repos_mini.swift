//
//  InfiniteScrollChart.swift
//  ChartsGallery
//
//  Created by beader on 2022/11/3.
//
import SwiftUI
import Charts
struct InfiniteScrollChart_2: View {
private let height: CGFloat = 100
private let numBins: Int = 7
private let pagingAnimationDuration: CGFloat = 0.2
@GestureState private var translation: CGFloat = .zero
@State private var offset: CGFloat = .zero
// Width of the visible plot area
    @State private var chartContentContainerWidth: CGFloat = .zero
// Width of the yAxis of chart
    @State private var yAxisWidth: CGFloat = .zero
// Each bar represents a unit duration along xAxis
    @State private var currentUnitOffset: Int = .zero
@Environment(\.locale) var locale
var body: some View {
        GeometryReader { geometry in
HStack(alignment: .top, spacing: 0) {
VStack(spacing: 0) {
                    chartContent
// The actual width of the plot area is three times of page width
        .frame(width: chartContentContainerWidth * 3 , height: height)
                        .offset(x: translation)
                        .offset(x: offset)
// This is a magic component to avoid some weird UI behavior
                    Text("")
                }
                .frame(width: chartContentContainerWidth)
                .clipped()
                chartYAxis
                    
                    .onPreferenceChange(YAxisWidthPreferenceyKey.self) { newValue in
                        yAxisWidth = newValue
                        chartContentContainerWidth = geometry.size.width - yAxisWidth
                    }
            }
        }
        .frame(height: height)
    }
var chart: some View {
BarChart(unitOffset: $currentUnitOffset)
    }
var chartContent: some View {
        chart
            .chartXAxis {
AxisMarks(
format: .dateTime.weekday().locale(locale),
preset: .extended,
values: .stride(by: .day)
                )
            }
            .chartYAxis {
AxisMarks(position: .trailing, values: .automatic(desiredCount: 0)) {
AxisGridLine()
                }
            }
    }
var chartYAxis: some View {
        chart
            .foregroundStyle(.clear)
            .chartYAxis {
AxisMarks(position: .trailing, values: .automatic(desiredCount: 0))
            }
            .chartPlotStyle { plot in
                plot.frame(width: 0)
            }
    }
}

struct InfinityScrollChart_Previews_2: PreviewProvider {
static var previews: some View {
InfiniteScrollChart_2()
            .padding(.horizontal, 4)
            .environment(\.locale, .init(identifier: "en_US"))
    }
}

