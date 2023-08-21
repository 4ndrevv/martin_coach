//
//  animal_activity_repos.swift
//  Martin Coach
//
//  Created by Nam on 25/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI
import Charts

struct animal_activity_repos: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                VStack {
                    HStack(alignment: .top, spacing: 100.0) {
                        VStack(alignment: .leading, spacing: 10) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "flame.fill")
                                        .foregroundColor(Color.red)
                                    Text("Activity")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.red)
                                }
                                HStack(alignment: .bottom, spacing: 2) {
                                    Text("7")
                                        .font(.system(size: 30))
                                        .fontWeight(.bold)
                                        .padding(.bottom, -4)
                                    Text("h")
                                        .font(.system(size: 15))
                                        
                                        .opacity(0.5)
                                    Text("30")
                                        .font(.system(size: 30))
                                        .fontWeight(.bold)
                                        .padding(.bottom, -4)
                                    Text("min")
                                        .font(.system(size: 15))
                                        
                                        .opacity(0.5)
                                    
                                }
                            }
                            HStack {
                                VStack(alignment: .leading, spacing: 2){
                                    Text("2h30")
                                        .foregroundColor(Color.red)
                                        .fontWeight(.bold)
                                    Text("3h00")
                                        .foregroundColor(Color.orange)
                                        .fontWeight(.bold)
                                    Text("2h00")
                                        .foregroundColor(Color.yellow)
                                        .fontWeight(.bold)
                                }
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("Walking")
                                    Text("Jogging")
                                    Text("Run")
                                }
                            }
                            
                            
                        }
                        
                        
                        ZStack{
                            ring_circle()
                                .frame(width: 125, height: 140)
                            VStack(spacing: -10) {
                                HStack(alignment: .bottom){
                                    Text("164")
                                        .font(.system(size: 40))
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                    
                                }
                                Text("cal")
                                    .opacity(0.5)
                            }
                            
                        }
                    }
                
                    Spacer().frame(height: 30)
                    Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.black)
                            .opacity(0.2)
                    Spacer().frame(height: 30)
    
                    
                    HStack(alignment: .top, spacing: 56.0) {
                            VStack(alignment: .leading) {
                                    HStack {
                                        Image(systemName: "bed.double.fill")
                                            .foregroundColor(Color.blue)
                                        Text("Repos")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.blue)
                                    }
                                HStack(alignment: .bottom, spacing: 2) {
                                    Text("6")
                                        .font(.system(size: 30))
                                        .fontWeight(.bold)
                                        .padding(.bottom, -4)
                                    Text("h")
                                        .font(.system(size: 15))
                                        .opacity(0.5)
                                    Text("30")
                                        .font(.system(size: 30))
                                        .fontWeight(.bold)
                                        .padding(.bottom, -4)
                                    Text("min")
                                        .font(.system(size: 15))
                                    
                                    .opacity(0.5)}
                                
                            }
                            InfiniteScrollChart_2()
                                        .padding(.horizontal, 4)
                                        .environment(\.locale, .init(identifier: "en_US"))
                                        .frame(width: 185)
                    }
                }
                .padding(20)
                
                
        }
            
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color.white.opacity(1))
                    .shadow(color: Color.gray.opacity(0.6), radius: 40) // Set the shadow color to red here
                    .padding(.top, -10)
            }
    }
    }
}

struct animal_activity_repos_Previews: PreviewProvider {
    static var previews: some View {
        animal_activity_repos()
    }
}
