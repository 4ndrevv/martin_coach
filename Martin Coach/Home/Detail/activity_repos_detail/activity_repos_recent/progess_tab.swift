//
//  activity_tab.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 10/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct progress_tab: View {
    var body: some View {
        ForEach(sample_analytics_2) { item in
            HStack {
                VStack {
                    HStack {
                        Text(item.name_activity)
                            .fontWeight(.semibold)
                        
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(item.color_activity)
                        
                        Spacer()
                        
                        Text("12h30")
                            .opacity(0.5)
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(String(item.distance_activity) + " km")
                            Text(String(item.time_activity) + " min")
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(String(item.calorie_activity))
                                .fontWeight(.semibold)
                                .font(Font.system(size: 36))
                            
                            Text("Kcal")
                                .opacity(0.9)
                                .font(Font.system(size: 10))
                        }
                    }
                }
            }
            .padding()
            
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(.white)
            }
        }

        
    }
}

struct progress_tab_Previews: PreviewProvider {
    static var previews: some View {
        progress_tab()
        
    }
    
}
