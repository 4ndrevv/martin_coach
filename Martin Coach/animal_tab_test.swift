//
//  animal_tab.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 14/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_tab_test: View {
    @State var show_animal = false
    @Namespace var namespace_animal
    var body: some View {
        
            VStack{
                if !show_animal {
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 120)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        Image("chat_photo")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 370, height: 120)
                            .clipShape(Rectangle())
                            .cornerRadius(20)
                            
                        
                    }
                    .transition(.opacity)
                    .frame(width: 370, height: 120)
                } else {
                    animal()
                        .transition(.opacity)
                }
            }
            .frame(maxHeight : .infinity)
            .onTapGesture{
                withAnimation(.spring()) {
                    show_animal = true
                }
            }
        
    }
}

struct animal_tab_test_Previews: PreviewProvider {
    static var previews: some View {
        animal_tab_test()
    }
}
