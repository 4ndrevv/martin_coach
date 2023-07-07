//
//  animal.swift
//  Martin Coach
//
//  Created by Hoang Hai Nam on 14/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition : CGFloat, CaseIterable {
    case top = 0.94
    case middle = 0.1
}

struct animal: View {
    
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ZStack{
                    //background color
                    Color.background
                    .edgesIgnoringSafeArea(.all)
                    
                    //background image
                    Image("background")
                        .resizable()
                        .ignoresSafeArea()
                        .opacity(0.7)
                    
                   ScrollView{
                       VStack{
                           Image("chat_photo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                                .clipShape(Circle())
                                .offset(x: 0, y: 10)
                            
                            Text("Olivie")
                                .font(.title)
                                .fontWeight(.black)
                                .padding(.top)
                           Text(attributedString)
                           
                           Text("4.2 kg").opacity(0.7)
                               .font(.system(size: 15))
                               .font(.headline)
                               .fontWeight(.semibold)
                           
                       }
                       .padding(.bottom, 19.0)
                        }
                    //Bottom Sheet
                    BottomSheetView(position: $bottomSheetPosition){
                       // Text(bottomSheetPosition.rawValue.formatted())
                    } content: {
                        animal_form_view()
                    }
                
                    //nav bar
                    nav_bar(action: {})
                    }
            .navigationBarHidden(true)
        }
        
                
        }
    }
    private var attributedString: AttributedString {
        var string = AttributedString("4,2 kg")
        
        if let temp = string.range(of: "4,2 kg") {
            string[temp].font = .system(size: 15)
            string[temp].font = .headline
           
        }
        
        return string
    }


struct animal_Previews: PreviewProvider {
    static var previews: some View {
        animal()
    }
}
