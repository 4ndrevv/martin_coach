//
//  animal_activity_detail.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_activity_detail: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            chart()
        }
        .frame(maxWidth : .infinity)
        }
    
    }

struct animal_activity_detail_Previews: PreviewProvider {
    static var previews: some View {
        animal_activity_detail()
    }
}
