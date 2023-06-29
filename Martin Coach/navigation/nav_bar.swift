//
//  nav_bar.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 22/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct nav_bar: View {
    var action: () -> Void
    var body: some View {
        ZStack{
            //Arc Shape (file in Utils)
            Arc()
                .fill(Color.nav_bar_color)
                .frame(height: 88)
                .overlay{
                    Arc()
                        .stroke(Color.nav_bar_color.opacity(0.9), lineWidth: 1.5)
                }
            
            HStack{
                //Expand Button
                Button{
                    action()
                } label: {
                    Image(systemName: "trophy")
                        .frame(width: 44, height: 44)
                }
                Spacer()
                
                //Navigation button
                NavigationLink{
                    
                } label: {
                    Image(systemName: "list.bullet")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32
                               ))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        
    }
}

struct nav_bar_Previews: PreviewProvider {
    static var previews: some View {
        nav_bar(action: {})
            .preferredColorScheme(.dark)
    }
}
