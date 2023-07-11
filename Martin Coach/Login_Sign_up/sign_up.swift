//
//  sign_up.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 21/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct sign_up: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUserName = ""
    @State private var wrongPassword = ""
    @State private var showingLoginScreen = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
      NavigationView{
            ZStack {
                Color.yellow.opacity(0.75)
                    .ignoresSafeArea()
                Circle()
                    .scale(1.9)
                    .foregroundColor(.white.opacity(0.35))
                Circle()
                    .scale(1.6)
                    .foregroundColor(.white.opacity(0.65))
                VStack{
                    Text("Sign up")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)
                    TextField("Nom et Prénom", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongUserName))
                    TextField("Day of Birth", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongUserName))
                    TextField("Numbre of telephone", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongUserName))
                    TextField("Email", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongUserName))
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongUserName))
                    TextField("Password confirmation", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongUserName))
                    
                    Button("Sign up"){
                        //authentic user lier avec database
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    HStack{
                        Text("Alredy have a account ?")
                    
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Login")
                        }
                    }
                    .frame(width: 300, height: 40)
                    .font(.system(size: 10))
                    
                        
                }
            }
        }
      .navigationBarHidden(true)
    }
}

struct sign_up_Previews: PreviewProvider {
    static var previews: some View {
        sign_up()
    }
}
