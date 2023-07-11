//
//  graph.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI
import Charts

struct graph: View {
    //Mark : Sate Chart Data for animation changes
    @State var sampleAnalytics: [graph_struct] = sample_analytics
    // Mark : View Properties
    @State var currentTab: String = "Day"
    var body: some View {
            VStack {
                // Mark : New Chart API
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Text("Calorie")
                            .fontWeight(.semibold)
                        Picker("", selection: $currentTab){
                            Text("Day")
                                .tag("Day")
                            Text("Week")
                                .tag("Week")
                            Text("Month")
                                .tag("Month")
                        }
                        .pickerStyle(.segmented)
                        .padding(.leading, 80)
                    }
                    
                    let totalValue = sampleAnalytics.reduce(0.0) { partialResult, item in
                        item.calorie + partialResult
                    }
                    
                    Text(totalValue.stringFormat)
                        .font(.largeTitle.bold())
                    AnimatedGraph()
                }
                .padding()
                .background {
                    RoundedRectangle( cornerRadius: 10, style: .continuous)
                        .fill(.white.shadow(.drop(radius: 2)))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            //.padding()
            
            //Mark: Simply Updating Values For Segment Tabs
            .onChange(of: currentTab) { newValue in
                sampleAnalytics = sample_analytics
                if newValue != "Day" {
                    for(index,_) in sampleAnalytics.enumerated(){
                        sampleAnalytics[index].calorie = .random(in: 1...40)
                    }
                }
                // Re-animatingView
                animateGraph(fromChange: true)
            }
        }
    
    @ViewBuilder
    func AnimatedGraph() -> some View {
        let max = sampleAnalytics.max { item1, item2 in
            return item2.calorie > item1.calorie
        }?.calorie ?? 0
        Chart{
            ForEach(sampleAnalytics){ item in
                // Mark : Bar Graph
                // Mark : Animating graph
                BarMark(
                    x: .value("Hour", item.hour, unit: .hour),
                    y: .value("Calorie", item.animate ? item.calorie : 0)
                )
            }
        }
        //Mark : Customizing Y-axis length
        .chartYScale(domain: 0...(max + 100))
        .frame(height: 250)
        .onAppear {
            animateGraph()
        }
    }
    func animateGraph(fromChange: Bool = false){
        for (index,_) in sampleAnalytics.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * (fromChange ? 0.03 : 0.05)) {
                withAnimation(fromChange ? .easeInOut(duration: 0.8) : .interactiveSpring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.8)) {
                    sampleAnalytics[index].animate = true
            }
            }
        }
    }
}

struct graph_Previews: PreviewProvider {
    static var previews: some View {
        graph()
    }
}

// Mark: Extension to convert double to string with K,M number values
//EG: 10K, 10M,...etc

extension Double {
    var stringFormat: String {
        if self >= 10000 && self < 99999 {
            return String(format: "%.1fK", self / 10000).replacingOccurrences(of: ".0", with: "")
        }
        if self > 99999 {
            return String(format: "%.1fM", self / 10000).replacingOccurrences(of: ".0", with: "")
        }
        return String(format: "%.0f", self)
    }
}
