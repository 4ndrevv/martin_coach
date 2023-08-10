//
//  tab_bar.swift
//  Martin Coach
//
//  Created by Nam on 02/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct tab_bar: View {
    var body: some View {
        tab_bar_home()
    }
}


struct tab_bar_Previews: PreviewProvider {
    static var previews: some View {
        tab_bar()
    }
}

//Tab item with the same name in assert
var tabItems = ["Trophy", "Home", "Menu"]

struct tab_bar_home: View {
    @State var selected = "Home"
    init(){
        UITabBar.appearance().isHidden = true
    }
    @State var centerX: CGFloat = 0
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $selected){
                Color.red
                    .tag(tabItems[0])
                    .ignoresSafeArea(.all, edges: .top)
                GeometryReader {
                    let size = $0.size
                    let safeArea = $0.safeAreaInsets
                    HomeView(size: size, safeArea: safeArea)
                        .ignoresSafeArea(.all, edges: .top)
                                }
                    .tag(tabItems[1])
                animal_menu()
                    .tag(tabItems[2])
                    .ignoresSafeArea(.all, edges: .top)
            }
            
            // Custom TabBar
            HStack(spacing: 0){
                ForEach(tabItems, id: \.self){ value in
                    GeometryReader{reader in
                        TabBarButton(selected: $selected, centerX: $centerX, value: value, rect: reader.frame(in: .global))
                        //Setting init cuvre
                            .onAppear(perform: {
                                if value == tabItems[1]{
                                    centerX = reader.frame(in: .global).midX
                                }
                            })
                    }
                    .frame(width: 70, height: 50)
                    if value != tabItems.last{Spacer(minLength: 0)}
                }
            }
            .padding(.horizontal, 25)
            .padding(.top)
            // For smaller iphone SE
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .background(Color.white.clipShape(AnimatedShape(centerX: centerX)))
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
            .padding(.top, -15)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct TabBarButton : View {
    @Binding var selected : String
    @Binding var centerX: CGFloat
    var value: String
    var rect: CGRect
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selected = value
                centerX = rect.midX
            }
        }, label: {
            VStack{
                if value == "Home" {
                    Image("chat_photo")
                         .resizable()
                         .aspectRatio(contentMode: .fill)
                         .clipShape(Circle())
                         .frame(width: 35,height: 35)
                }else{
                    Image(value)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 26, height: 26)
                        .foregroundColor(selected == value ? Color.yellow : .gray)
                }
                Text(value)
                    .font(.caption)
                    .foregroundColor(.black)
                    .opacity(selected == value ? 1 : 0)
            }
            // Default Frame For Reading Mid X Axis For Cuvre
            .padding(.top)
            .frame(width: 70, height: 50)
            .offset(y: selected == value ? -15 : 0)
        })
        
    }
}

// Custom Shape

struct AnimatedShape: Shape {
    var centerX: CGFloat
    //animating Path...
    var animatableData: CGFloat {
        get{return centerX}
        set{centerX = newValue}
    }
    func path(in rect: CGRect) -> Path{
        return Path{path in
            path.move(to: CGPoint(x: 0, y: 15))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y:rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 15))
            
            //Curve
            path.move(to: CGPoint(x: centerX - 35, y: 15))
            path.addQuadCurve(to: CGPoint(x: centerX + 35, y: 15), control: CGPoint(x: centerX, y: -30))
        }
    }
}
