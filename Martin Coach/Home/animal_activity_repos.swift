//
//  animal_activity_repos.swift
//  Martin Coach
//
//  Created by Nam on 25/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

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
                                    Text("Calorie")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.red)
                                }
                                Text("163")
                                    .font(.system(size: 50))
                                    .fontWeight(.bold)
                            }
                            HStack {
                                VStack(alignment: .leading, spacing: 2){
                                    Text("2h")
                                        .foregroundColor(Color.red)
                                        .fontWeight(.bold)
                                    Text("3h")
                                        .foregroundColor(Color.green)
                                        .fontWeight(.bold)
                                    Text("2h")
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
                    ZStack {
                        Spacer().frame(height: 30)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.black)
                            .opacity(0.2)
                    }
                    .frame(width: 330 )
                    
                    HStack(alignment: .top, spacing: 90.0) {
                        HStack() {
                            VStack(alignment: .leading) {
                                    HStack {
                                        Image(systemName: "bed.double.fill")
                                            .foregroundColor(Color.blue)
                                        Text("Repos")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.blue)
                                    }
                                    Text("24h")
                                        .font(.system(size: 50))
                                        .fontWeight(.bold)
                            }
                            InfiniteScrollChart()
                                        .padding(.horizontal, 4)
                                        .environment(\.locale, .init(identifier: "en_US"))
                                        
                                        
                                        
                        }
                        
                    }
                }
                .padding()
                
                
        }
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.white.shadow(.drop(radius: 20)))
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
