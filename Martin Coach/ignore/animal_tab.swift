//
//  animail_tab2.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 20/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_tab: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 6) {
                Text("Olivie")
                    .font(.headline)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("5 ans / 5,4 kg")
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .frame(maxWidth: 370)
            .padding(.horizontal, 16)
            .padding(.bottom, 0)
        }
        .frame(height: 160)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.2)]), startPoint: .center, endPoint: .bottom)
        )
        .background(
                    Image("chat_photo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .gesture(
                            TapGesture()
                                .onEnded { _ in
                                            }
                                    )
                )
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
        .overlay(
            Image(systemName: "3.circle.fill")
                .resizable()
                .frame(maxWidth: 24, maxHeight: 24, alignment: .center)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .foregroundColor(Color.red)
        )

    }
}

struct animal_tab_Previews: PreviewProvider {
    static var previews: some View {
        animal_tab()
    }
}
