//
//  ania.swift
//  Martin Coach
//
//  Created by Nam on 10/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_adresse: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Adresse")
                    .font(.system(size: 20))
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
                    .opacity(0.4)
                    .font(.system(size: 13))
                    .font(.title)
                    .bold()
            }
            Rectangle().frame(height: 1).foregroundColor(Color.yellow)
            Text("20 Avenue Buttes de Coesmes")
            Text("Aulnoy-lez-Valenciennes")
            Text("59300 - France")
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.yellow, lineWidth: 2) // Adding yellow stroke
                .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.white.opacity(1)))
                .padding(.top, -10)
        }
        .padding()
    }
}

struct animal_adresse_Previews: PreviewProvider {
    static var previews: some View {
        animal_profile()
    }
}
