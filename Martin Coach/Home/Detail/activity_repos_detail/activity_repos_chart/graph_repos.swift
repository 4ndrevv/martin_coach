//
//  InfiniteScrollChart.swift
//  ChartsGallery
//
//  Created by beader on 2022/11/3.
//
import SwiftUI
import Charts
struct YAxisWidthPreferenceyKey: PreferenceKey {
static var defaultValue: CGFloat = .zero
static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}
struct YAxisWidthModifier: ViewModifier {
func body(content: Content) -> some View {
        content.background(
            GeometryReader { geometry in
                Color.clear.preference(key: YAxisWidthPreferenceyKey.self, value: geometry.size.width)
            }
        )
    }
}
struct BarChart: View {
@Binding var unitOffset: Int
@State var upperBound: Double?
@State var data_base: [graph_struct_repos_test] = sample_analytics_test
init(unitOffset: Binding<Int>) {
self._unitOffset = unitOffset
    }
private let calendar: Calendar = {
        Calendar.init(identifier: .gregorian)
    }()
    private var initDate: Date {
        calendar.startOfDay(for: Date().addingTimeInterval(TimeInterval(unitOffset * 24 * 3600)))
    }
    
    private var data: [(date: Date, value: Double)] {
        return (-7..<14).map { i in
            let currentDate = initDate.addingTimeInterval(Double(i) * 24 * 3600)
            
            if let matchingItem = data_base.first(where: { item in
                calendar.component(.day, from: currentDate) == calendar.component(.day, from: Date(timeIntervalSince1970: TimeInterval(item.time_start)))
                &&
                calendar.component(.month, from: currentDate) == calendar.component(.month, from: Date(timeIntervalSince1970: TimeInterval(item.time_start)))
                &&
                calendar.component(.year, from: currentDate) == calendar.component(.year, from: Date(timeIntervalSince1970: TimeInterval(item.time_start)))
            }) {
                let value = Double(Date(timeIntervalSince1970: TimeInterval(matchingItem.time_end)).timeIntervalSince(Date(timeIntervalSince1970: TimeInterval(matchingItem.time_start)))) / 3600
                return (date: currentDate, value: value)
            } else {
                return (date: currentDate, value: 0)
                
            }
        }
    }

var body: some View {
        Chart {
ForEach(data, id: \.date) { item in
BarMark(
x: .value("Day", item.date, unit: .weekday),
y: .value("Value", min(item.value, upperBound ?? item.value))
                )
            }
        }
        .onAppear {
            upperBound = data[7..<14].map(\.value).max()
            unitOffset = -4
        }
        .onChange(of: unitOffset) { newValue in
withAnimation(.spring()) {
                upperBound = data[7..<14].map(\.value).max()
            }
        }
    }
}
struct InfiniteScrollChart: View {
private let height: CGFloat = 250
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
private var drag: some Gesture {
DragGesture(minimumDistance: 0)
            .updating($translation) { value, state, _ in
                state = value.translation.width
            }
            .onEnded { value in
                offset = offset + value.translation.width
let unitWidth = chartContentContainerWidth / Double(numBins)
let unitOffset = (value.translation.width / unitWidth).rounded(.toNearestOrAwayFromZero)
var predictedUnitOffset = (value.predictedEndTranslation.width / unitWidth).rounded(.toNearestOrAwayFromZero)
// If swipe carefully, change to the nearest time unit
                // If swipe fast enough, change to the next page
                predictedUnitOffset = max(-Double(numBins), predictedUnitOffset)
                predictedUnitOffset = min(Double(numBins), predictedUnitOffset)
withAnimation(.easeOut(duration: pagingAnimationDuration)) {
if abs(predictedUnitOffset) >= Double(numBins) {
                        offset = predictedUnitOffset * unitWidth
                    } else {
                        offset = unitOffset * unitWidth
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + pagingAnimationDuration) {
                    currentUnitOffset = currentUnitOffset - Int(offset / unitWidth)
                    offset = 0
                    print(unitOffset)
                }
            }
    }
var body: some View {
        GeometryReader { geometry in
HStack(alignment: .top, spacing: 0) {
VStack(spacing: 0) {
                    chartContent
// The actual width of the plot area is three times of page width
                        .frame(width: chartContentContainerWidth * 3 , height: height)
                        .offset(x: translation)
                        .offset(x: offset)
                        .gesture(drag)
// This is a magic component to avoid some weird UI behavior
                    Text("")
                }
                .frame(width: chartContentContainerWidth)
                .clipped()
                chartYAxis
                    .modifier(YAxisWidthModifier())
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
AxisMarks(position: .trailing, values: .automatic(desiredCount: 4)) {
AxisGridLine()
                }
            }
    }
var chartYAxis: some View {
        chart
            .foregroundStyle(.clear)
            .chartYAxis {
AxisMarks(position: .trailing, values: .automatic(desiredCount: 4))
            }
            .chartPlotStyle { plot in
                plot.frame(width: 0)
            }
    }
}
struct InfinityScrollChart_Previews: PreviewProvider {
static var previews: some View {
InfiniteScrollChart()
            .padding(.horizontal, 4)
            .environment(\.locale, .init(identifier: "en_US"))
    }
}
