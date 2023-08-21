//
//  animal_identify.swift
//  Martin Coach
//
//  Created by Nam on 09/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_identify: View {
    var body: some View {
            VStack(alignment: .leading){
                HStack{
                    Text("Indentify")
                        .foregroundColor(Color.black)
                        .font(.system(size: 20))
                        .font(.title)
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black)
                        .font(.system(size: 13))
                        .font(.title)
                        .bold()
                }
                Rectangle().frame(height: 1).foregroundColor(Color.black).opacity(0.6)
                Text("Chat - Female")
                Text("Olivier Ashan")
                Text("13/05/2020")
            }
            .padding()
            .background {
                RoundedRectangle( cornerRadius: 10, style: .continuous)
                    .fill(.white)
            }
            .padding()
    }
}

struct animal_identify_Previews: PreviewProvider {
    static var previews: some View {
        animal_profile()
    }
}
