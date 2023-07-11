//
//  animal_activity.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 20/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_activity: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Activity")
                .font(.headline)
                .fontWeight(.semibold)
            ZStack{
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 370, height: 120)
                    .cornerRadius(20)
                HStack(spacing: 120.0){
                    ZStack{
                        Circle()
                            .stroke(Color.blue, lineWidth: 20)
                            .frame(width: 125, height: 140)
                        Text("7h")
                            .font(.system(size: 50))
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    VStack{
                        Text("Calories")
                            .fontWeight(.bold)
                       Text ("163")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    }
                    
                }
                
            }
            .padding(.bottom)
            HStack{
                Circle()
                    .frame(width:10, height: 10)
                Text("Walking")
                
                Circle()
                    .frame(width:10, height: 10)
                Text("Jogging")
                
                Circle()
                    .frame(width:10, height: 10)
                Text("Run")
                
            }
            .padding(.leading)
            
        }
    }
}

struct animal_activity_Previews: PreviewProvider {
    static var previews: some View {
        animal_activity()
    }
}
