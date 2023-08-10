//
//  animal_activity_detail.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_activity_repos_detail: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            all_chart()
        }
        .frame(maxWidth : .infinity )
        .background(Color.gray.opacity(0.09))
        }
    
    }

struct animal_activity_repos_detail_Previews: PreviewProvider {
    static var previews: some View {
        animal_activity_repos_detail()
    }
}
