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
                Color.white.opacity(1)
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    HeaderView()
                    ///making to top
                        .zIndex(1000)
                    
                    VStack(spacing: 35) {
                        HStack(alignment: .bottom) {
                            Text("Today")
                                .font(.system(size: 27))
                                .fontWeight(.bold)
                            Text("last update " + date_time_actuel())
                                .font(.system(size: 11))
                                .italic()
                                .opacity(00.4)
                                .padding(.bottom, 5)
                        }
                        .padding(.leading, 6.0)
                        .padding(.bottom, -8)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16.0)
                        
                        //NavigationLink(destination: animal_activity_repos_detail()){
                         //   animal_activity_repos()
                        //}
                        //.buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: animal_activity_repos_detail()) {
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
        .refreshable{
            
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
                        let bottomPadding: CGFloat = 17
                        let resizedOffsetY = (-(minimumHeaderHeight - halfScaledHeight - bottomPadding))
                        
                        NavigationLink(destination: animal_profile()) {
                            animal_icon_circle()
                                .frame(width: rect.width, height: rect.height)
                                .scaleEffect(1 - (progress * 0.6), anchor: .center)
                                .offset(x: progress, y: -resizedOffsetY * progress + 40)
                                .shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 5)
                        }
                        
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
            //.shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 5)
        }
        .frame(height: headerHeight)
        
    }
    func getRectangleColorForProgress(_ progress: CGFloat) -> Color {
        let yellow = Color.white
        let black = Color.black.opacity(0)

        return progress > 0.95 ? yellow : black
    }
    func date_time_actuel() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss / dd-MM-yyyy"
        let date_time = Date()
        let date_time_final = dateFormatter.string(from: date_time)
        return date_time_final
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {
                   let size = $0.size
                   let safeArea = $0.safeAreaInsets
                   
                   HomeView(size: size, safeArea: safeArea)
                       .ignoresSafeArea(.all, edges: .top)
               }
    }
}
