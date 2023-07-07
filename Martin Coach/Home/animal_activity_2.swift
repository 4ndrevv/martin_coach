//
//  animal_activity_2.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 04/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_activity_2: View {
    var body: some View {
            VStack(alignment: .leading) {
                Text("Activity")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .padding(.leading, 6.0)
                    .padding(.bottom, -8)
                    
                    
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 370, height: 200)
                        .cornerRadius(10)
                    HStack(alignment: .top, spacing: 80.0) {
                        VStack(alignment: .leading, spacing: 10) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "flame.fill")
                                        .foregroundColor(Color.red)
                                    Text("Calorie")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.red)
                                }
                                Text("163")
                                    .font(.system(size: 40))
                                    .fontWeight(.bold)
                            }
                            HStack {
                                VStack(alignment: .leading, spacing: 2) {
                                    HStack {
                                        Circle()
                                            .frame(width:10, height: 10)
                                            .foregroundColor(Color.red)
                                        
                                            Text("Walking")
                                        
                                    }
                                    HStack {
                                        Circle()
                                            .frame(width:10, height: 10)
                                            .foregroundColor(Color.green)
                                        Text("Jogging")
                                    }
                                    HStack {
                                        Circle()
                                            .frame(width:10, height: 10)
                                            .foregroundColor(Color.yellow)
                                        Text("Run")
                                    }
                                }
                                VStack(alignment: .leading, spacing: 2){
                                    Text("2h")
                                    Text("3h")
                                    Text("2h")
                                }
                            }
                            
                            
                        }
                        
                        
                        ZStack{
                            Circle()
                                .stroke(Color.blue, lineWidth: 20)
                                .frame(width: 125, height: 140)
                            VStack {
                                Text("7h")
                                    .font(.system(size: 50))
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                Text("active")
                            }
                            
                        }
                    }
            }
        }
    }
}

struct animal_activity_2_Previews: PreviewProvider {
    static var previews: some View {
        animal_activity_2()
    }
}
