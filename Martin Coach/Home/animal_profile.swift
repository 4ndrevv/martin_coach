//
//  animal_profile.swift
//  Martin Coach
//
//  Created by Nam on 04/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_profile: View {
    var body: some View {
        NavigationView(){
            ScrollView{
                HStack(){
                    Button(action: {
                        
                    }){
                        Text("Olivier")
                            .font(.system(size: 30))
                            .font(.title)
                            .foregroundColor(.black)
                            .bold()
                        Image(systemName: "chevron.down")
                            .font(.system(size: 12))
                            .font(.title)
                            .foregroundColor(.black)
                            .bold()
                    }
                    Spacer()
                    Button(action: {
                        
                    }){
                        Image(systemName: "link")
                            .font(.system(size: 18))
                            .font(.title)
                            .foregroundColor(.black)
                            .bold()
                    }
                }
                .padding()
                .frame(height: .infinity)
                HStack{
                    Button(action: {
                        
                    }){
                        animal_icon_circle()
                            .frame(width: 100, height: 100)
                    }
                    Spacer()
                    HStack(alignment: .center, spacing: 50){
                        Button(action: {
                            
                        }){
                            VStack{
                                Text("Owner")
                                    .bold()
                                Image("user_photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Hugo")
                                    .font(.system(size: 12))
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            
                        }){
                            VStack{
                                Text("Docter")
                                    .bold()
                                Image("docter_photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Pierre")
                                    .font(.system(size: 12))
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(23)
                Button(action: {
                    
                }){
                    animal_identify()
                }
                .buttonStyle(PlainButtonStyle())
                Button(action: {
                    
                }){
                    animal_adresse()
                }
                .buttonStyle(PlainButtonStyle())
                Button(action: {
                    
                }){
                    Text("Delete this animal")
                        .foregroundColor(Color.red)
                    
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
            }
        }
    }
}

struct animal_profile_Previews: PreviewProvider {
    static var previews: some View {
        animal_profile()
    }
}
