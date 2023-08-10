//
//  activity_ring_card.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct activity_ring_card: View {
    var body: some View {
        HStack(alignment: .center, spacing: 70){
            VStack(alignment: .leading, spacing: 1) {
                VStack(alignment: .leading, spacing: 10){
                    ForEach(rings) { ring in
                            HStack(alignment: .center, spacing: 5){
                                Text("\(Int(ring.progress))%")
                                    .font(.system(size: 20))
                                    .foregroundColor(ring.keyColor)
                                    .bold()
                                Text(ring.value)
                                    .font(.caption)
                                    .bold()
                            }

                }
            }
                
            }
            
            .padding(.vertical, 45)
            ZStack{
                ring_circle()
                VStack(alignment: .center, spacing: 2) {
                    Text("7h")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .padding(.bottom, -4)
                    Text("30 min")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .padding(.bottom, -4)
                    
                }
            }
            
        }
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle( cornerRadius: 10, style: .continuous)
                .fill(.white)
        }
    }
}

struct activity_ring_card_Previews: PreviewProvider {
    static var previews: some View {
        activity_ring_card()
    }
}
