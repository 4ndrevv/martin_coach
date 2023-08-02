//
//  HomeView.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 04/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var size: CGSize
    var safeArea: EdgeInsets
    ///view properties
    @State private var offsetY: CGFloat = 0
    var body: some View {
        NavigationView {
            ZStack{
                Color.yellow.opacity(0.8)
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    HeaderView()
                    ///making to top
                        .zIndex(1000)
                    animal_martin_coach()
                        .scaleEffect(0.7)
                    VStack(spacing: 35) {
                        Text("Activity")
                            .font(.system(size: 27))
                            .fontWeight(.bold)
                            .padding(.leading, 6.0)
                            .padding(.bottom, -8)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16.0)
                        NavigationLink(destination: animal_activity_repos_detail()){
                            animal_activity_repos()
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Text("Food")
                            .font(.system(size: 27))
                            .fontWeight(.bold)
                            .padding(.leading, 6.0)
                            .padding(.bottom, -8)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                            .padding(.leading, 16.0)
                        
                        NavigationLink(destination: animal_food_detail()){
                            animal_food()
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.bottom, 70)
                       
                    }
                    .background {
                        Scroll_home_detector { offset in
                            offsetY = -offset
                        } onDraggingEnd: { offset, velocity in
                            print("Scroll release")
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            
        }
    }
    
    @ViewBuilder
    func HeaderView() -> some View {
        let headerHeight = (size.height * 0.2) + safeArea.top
        let minimumHeaderHeight = 65 + safeArea.top
        ///converting offset into progress
        ///limiting it to 0 - 1
        let progress = max(min(-offsetY / (headerHeight - minimumHeaderHeight), 1), 0)
        GeometryReader { _ in
            ZStack {
                Rectangle()
                    .fill(getRectangleColorForProgress(progress))
                
                VStack(spacing: 15) {
                    GeometryReader{
                        let rect = $0.frame(in: .global)
                        ///Since Scalling of the image is 0.3 (1-0.7)
                        let halfScaledHeight = ( rect.height * 0.3) * 0.5
                        let bottomPadding: CGFloat = 15
                        let resizedOffsetY = (-(minimumHeaderHeight - halfScaledHeight - bottomPadding))
                        
                        animal_icon_circle()
                             .frame(width: rect.width, height: rect.height)
                             ///Scaling item
                             .scaleEffect(1 - (progress * 0.5), anchor: .center)
                             ///Moving scale effect
                             .offset(x: progress, y: -resizedOffsetY * progress+40)
                        
                    }
                    .frame(width: headerHeight * 0.5, height: headerHeight * 0.5)
                    
                    Text("Olivie")
                        .padding(.top, 50)
                        .font(.title)
                        .foregroundColor(.black)
                        .bold()
                        .scaleEffect(1 - (progress * 1), anchor: .center)
                }
                .padding(.top, safeArea.top)
                .padding(.bottom, 15)
            }
            ///resize header
            .frame(height: (headerHeight + offsetY) < minimumHeaderHeight ? minimumHeaderHeight : (headerHeight + offsetY), alignment: .bottom)
            ///sticking to the top
            .offset(y: -offsetY)
            .shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 5)
        }
        .frame(height: headerHeight)
        
        
    }
    func getRectangleColorForProgress(_ progress: CGFloat) -> Color {
        let yellow = Color.white
        let black = Color.black.opacity(0)

        return progress > 0.95 ? yellow : black
    }




}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
