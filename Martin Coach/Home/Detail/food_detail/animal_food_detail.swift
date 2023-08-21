//
//  animal_food_detail.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_food_detail: View {
    var body: some View {
            ScrollView{
                VStack{
                    ZStack{
                        Circle()
                            .trim(from: 0, to: 0.67)
                            .stroke(Color.yellow, style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.init(degrees: -90))
                            .background {
                                Circle()
                                    .stroke(.gray.opacity(0.4), lineWidth: 25)
                            }
                            .frame(width: 280, height: 150)
                            .padding(80)
                        Image("gamelle")
                            .resizable()
                            .frame(width: 114, height: 100)
                        
                    }
                    Text("Simulation")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    simulation_tab()
                        .padding()
                    
                }
                .padding()
                VStack{
                    Text("Food")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    graph_food()
                }
                .padding()
                
                VStack{
                    Text("Food activity")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    graph_food()
                }
                .padding()
            
        }
        .navigationTitle("Food")
        .navigationBarItems(trailing:
                                Button(action: {
                                }) {
                                    Text("Add")
                                })
    }
}

struct animal_food_detail_Previews: PreviewProvider {
    static var previews: some View {
        animal_food_detail()
    }
}
