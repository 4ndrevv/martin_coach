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
        HStack(spacing: 70){
            VStack(alignment: .leading, spacing: 1) {
                Text("Time")
                    .fontWeight(.semibold)
                    .frame( alignment: .leading)
                Text("7h")
                    .font(.system(size: 45, weight: .bold))
                    .frame(alignment: .leading)
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
            
            .padding(.vertical, 15)
            ring_circle()
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
