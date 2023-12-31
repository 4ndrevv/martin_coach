//
//  animal_food.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 20/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_food: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Food")
                .font(.headline)
                .fontWeight(.semibold)
            ZStack{
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 370, height: 140)
                    .cornerRadius(20)
                Image("gamelle")
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
                       
                   }
    }
}

struct animal_food_Previews: PreviewProvider {
    static var previews: some View {
        animal_food()
    }
}
