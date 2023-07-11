//
//  ring_circle_2.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct ring_circle_2: View {
    @State var sampleAnalytics: [graph_struct] = sample_analytics
    
    @State var currentTab: String = "Day"
    var body: some View {
        VStack {
            // Mark : New Chart API
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text("Hour")
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
                
            }
            .padding()
            .background {
                RoundedRectangle( cornerRadius: 10, style: .continuous)
                    .fill(.white.shadow(.drop(radius: 2)))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        //.padding()
    }
}

struct ring_circle_2_Previews: PreviewProvider {
    static var previews: some View {
        ring_circle_2()
    }
}
