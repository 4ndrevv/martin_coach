//
//  animal_martin_coach.swift
//  Martin Coach
//
//  Created by Nam on 25/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI






/* struct animal_martin_coach: View {
    @State private var rectangleColor: Color = .gray
    @State private var text_connect: String = "Non Connect"
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(rectangleColor)
                .frame(width: 190, height: 60)
                .cornerRadius(20)
                .shadow(color: Color.gray.opacity(0.6), radius: 40)
            HStack {
                ZStack {
                    
                    Image("martin_coach_v2")
                        .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                }
                Spacer().frame(width: 20)
                Rectangle()
                    .frame(width: 2,height: 30)
                    .foregroundColor(Color.gray)
                    .opacity(0.2)
                Spacer().frame(width: 25)
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "battery.75")
                        Text("75%")
                            .font(.system(size: 12))
                    }
                    Text(text_connect)
                        .font(.system(size: 10))
                }
                Spacer().frame(width: 10)
            }
        }
        .onTapGesture {
            withAnimation {
                rectangleColor = rectangleColor == .gray ? .yellow : .gray
                text_connect = text_connect == "Non Connect" ? "Connected" : "Non Connect"
            }

        }

        
        
        
        
        
    }
}

struct animal_martin_coach_Previews: PreviewProvider {
    static var previews: some View {
        animal_martin_coach()
    }
}

 */
