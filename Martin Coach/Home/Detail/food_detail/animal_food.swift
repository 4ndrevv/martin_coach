//
//  animal_food_2.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 04/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_food: View {
    var body: some View {
            
              ZStack{
                    Image("gamelle")
                        .resizable()
                        .frame(width: 114, height: 100)
                        .offset(x: 115, y: -65)
                    
                    VStack(alignment: .leading, spacing: 5.0){
                        HStack{
                            Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                            Text("Quantity")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.yellow)
                            
                        HStack(spacing: 60){
                            HStack(alignment: .bottom, spacing: 2){
                                Text("23")
                                    .fontWeight(.bold)
                                    .font(.system(size: 30))
                                Text("/ 45 g")
                                    .offset(y:-5)
                                    .opacity(0.5)
                            }
                            
                            ZStack(alignment: .leading){
                                Image("Line 2")
                                Image("Line 2_up")
                            }
                        }
                    }
                    .padding()
                    
                    
                }
              .frame(maxWidth: .infinity)
              .frame(height: 120)
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.white.shadow(.drop(radius: 20)))
                }
                           
                       
        }
        
}

struct animal_food_Previews: PreviewProvider {
    static var previews: some View {
        animal_food()
    }
}
