//
//  user.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 15/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct user: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
            NavigationView {
                    ScrollView {
                        HStack(alignment: .center){
                                        Circle()
                                            .frame(width: 80, height: 80)
                                            .overlay(
                                                    Image("user_photo")
                                                        .resizable()
                                                        .cornerRadius(100)
                                                                    
                                                )
                                        Text("Pierre JEANJEAN")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 300, height: 50)
                                            .cornerRadius(20)
                                            .foregroundColor(.white)
                                            .shadow(radius: 4)
                                        Text("Changer mot de passe")
                                            .fontWeight(.semibold)
                                    }
                                    .padding(.top)
                                    
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 300, height: 50)
                                            .cornerRadius(20)
                                            .foregroundColor(.white)
                                            .shadow(radius: 4)
                                        Text("Déconnection")
                                            .fontWeight(.semibold)
                        
                                    }
                                    .navigationTitle("My Account")
                                    .navigationBarItems(trailing: Text("Edit"))
                                    .navigationBarItems(leading:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Text("Go back")
                                        }
                                    )
                        
                }
            }
        }
}

struct user_Previews: PreviewProvider {
    static var previews: some View {
        user()
    }
}
