//
//  graph_food.swift
//  Martin Coach
//
//  Created by Nam on 10/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct graph_food: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .fill(Color.white.opacity(1))
            .shadow(color: Color.gray.opacity(0.6), radius: 40)
            .frame(width: 360,height: 300)
    }
}

struct graph_food_Previews: PreviewProvider {
    static var previews: some View {
        graph_food()
    }
}
