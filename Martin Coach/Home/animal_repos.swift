//
//  animal_repos.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 06/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_repos: View {
    var body: some View {
            VStack(alignment: .leading){
                Text("Repos")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .padding(.leading, 6.0)
                    .padding(.bottom, -1)
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 370, height: 140)
                        .cornerRadius(10)
                    Image("animal_sleep")
                        .resizable()
                        .frame(width: 114, height: 100)
                        .offset(x: 115, y: -70)
                    VStack(alignment: .center){
                        HStack(spacing: 20.0){
                            Text("Today's quantity")
                                .fontWeight(.bold)
                            Text("45 g")
                                .fontWeight(.bold)
                        }
                        ZStack(alignment: .leading){
                            Image("Line 2")
                            Image("Line 2_up")
                        }
                    }
                .offset(x: -60, y: 0)
                    
                }
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(.white.shadow(.drop(radius: 20)))
                }
                           
                       }
        }
        
}

struct animal_repos_Previews: PreviewProvider {
    static var previews: some View {
        animal_repos()
    }
}
