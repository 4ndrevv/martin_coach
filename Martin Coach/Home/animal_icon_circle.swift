//
//  animal_icon_circle.swift
//  Martin Coach
//
//  Created by Nam on 02/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_icon_circle: View {
    @State private var isZoomed = false
    var body: some View {
        ZStack{
            Image("chat_photo")
                 .resizable()
                 .aspectRatio(contentMode: .fill)
                 .clipShape(Circle())
                 .overlay(
                     Circle()
                         .stroke(LinearGradient(gradient: Gradient(colors: [.red, .orange, .orange, .yellow, .yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 6)
                         .frame(width: 110, height: 240)
                 )
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 35, height: 35)
                .offset(x:33, y:43)
            Image("martin_coach_v2")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .offset(x:33, y:43)
        }

    }
}

struct animal_icon_circle_Previews: PreviewProvider {
    static var previews: some View {
        animal_icon_circle()
            .frame(width: 100, height: 100)
    }
}
