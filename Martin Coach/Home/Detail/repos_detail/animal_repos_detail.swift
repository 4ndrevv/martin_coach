//
//  animal_repos_detail.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_repos_detail: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            chart_2()
        }
        .frame(maxWidth : .infinity)
    }
}

struct animal_repos_detail_Previews: PreviewProvider {
    static var previews: some View {
        animal_repos_detail()
    }
}
