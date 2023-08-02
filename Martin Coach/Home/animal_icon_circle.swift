//
//  animal_icon_circle.swift
//  Martin Coach
//
//  Created by Nam on 02/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_icon_circle: View {
    var body: some View {
        Image("chat_photo")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .clipShape(Circle())
    }
}

struct animal_icon_circle_Previews: PreviewProvider {
    static var previews: some View {
        animal_icon_circle()
            .frame(width: 200, height: 200)
    }
}
