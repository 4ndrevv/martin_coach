//
//  animal_form_view.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 23/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_form_view: View {
    var body: some View {
        ScrollView{
        }
        .background(Color(uiColor: UIColor.clear))
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 44))
        .overlay {
            //bottom sheet separator
            Divider()
                .blendMode(.overlay)
                .background(Color.bottom_sheet_border_top)
                .frame(maxHeight: .infinity, alignment: .top)
                .clipShape(RoundedRectangle(cornerRadius: 44))
                
        }
        .overlay {
            //indicator
            RoundedRectangle(cornerRadius:10)
                .fill(.black.opacity(0.3))
                .frame(width: 48, height: 5)
                .frame(height: 20)
                .frame(maxHeight: .infinity, alignment: .top)
            
        }
    }
}

struct animal_form_view_Previews: PreviewProvider {
    static var previews: some View {
        animal_form_view()
    }
}
