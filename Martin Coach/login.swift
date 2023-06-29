//
//  login.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 21/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct login: View {
    
    @State private var email_telephone = ""
    @State private var password = ""
    @State private var wrongEmail_Telephone = ""
    @State private var wrongPassword = ""
    @State private var showingLoginScreen = false
    
    @State var showModal_sign_up = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow.opacity(0.75)
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.35))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white.opacity(0.65))
                VStack{
                    Image("gamelle")
                        .resizable()
                        .frame(width: 114, height: 100)
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)
                    TextField("Email or telephone number", text: $email_telephone)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongEmail_Telephone))
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        //.border(.red, width: CGFloat(wrongUserName))
                    Button("Login"){
                        //authentic user lier avec database
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    HStack{
                        Text("Don't have account yet ?")
                        
                        Button(action:{showModal_sign_up = true}) {
                            Text("Sign up")
                            }
                            .fullScreenCover(isPresented: $showModal_sign_up) {
                                                sign_up()
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

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
