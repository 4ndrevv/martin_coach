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
        VStack(spacing: 1) {
            Text("Time")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("7h")
                .font(.system(size: 45, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack() {
                VStack(alignment: .leading, spacing: 12){
                    ForEach(rings) { ring in
                        Label {
                            HStack(alignment: .bottom, spacing: 5){
                                Text("\(Int(ring.progress))%")
                                    .font(.title3.bold())
                                Text(ring.value)
                                    .font(.caption)
                            }
                        } icon : {
                            
                            Group{
                                if ring.isText{
                                    Circle()
                                        .frame(width:10, height: 10)
                                        .foregroundColor(ring.keyColor)
                                }else{
                                    Circle()
                                        .frame(width:10, height: 10)
                                        .foregroundColor(ring.keyColor)
                                }
                            }
                        }
                    }
                }
                Spacer()
                //progess ring
                ring_circle()
                    .padding(.leading, 10)
            }
            .padding(.top, 20)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .background {
            RoundedRectangle( cornerRadius: 10, style: .continuous)
                .fill(.white.shadow(.drop(radius: 2)))
        }
    }
}

struct activity_ring_card_Previews: PreviewProvider {
    static var previews: some View {
        activity_ring_card()
    }
}
