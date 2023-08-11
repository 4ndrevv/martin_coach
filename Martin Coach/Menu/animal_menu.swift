//
//  animal_menu.swift
//  Martin Coach
//
//  Created by Nam on 10/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_menu: View {
    //Image picker of photo header
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var image: UIImage?
    var body: some View {
        NavigationView{
            ScrollView{
                Button(action: {
                    self.showSheet = true
                }){
                    HStack{
                        Image(uiImage: image ?? UIImage(systemName: "person.circle.fill")!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 70, height: 70)
                            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Hugo GASTON")
                                .font(.system(size: 20))
                                .font(.title)
                                .bold()
                            Text("13/05/1999")
                                .font(.system(size: 10))
                                .opacity(0.5)
                                .italic()
                            
                        }
                    }
                    .padding(25)
                    .background {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(Color.yellow, lineWidth: 2) // Adding yellow stroke
                            .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.white.opacity(1)))
                            .padding(.top, -10)
                    }
                    .padding(50)
                }
                .actionSheet(isPresented: $showSheet) {
                    ActionSheet(title: Text("Select Photo"), message: Text("Choose"), buttons: [
                        .default(Text("Photo Library")) {
                            self.showImagePicker = true
                            self.sourceType = .photoLibrary
                        },
                        .default(Text("Camera")) {
                            self.showImagePicker = true
                            self.sourceType = .camera
                        },
                        .cancel()
                    ])
                }
                .sheet(isPresented: $showImagePicker) {
                    ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
                }
                .buttonStyle(PlainButtonStyle())
                
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Profile")
                            .font(.system(size: 20))
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                            .font(.system(size: 13))
                            .font(.title)
                            .bold()
                    }
                    Rectangle().frame(height: 1).foregroundColor(Color.yellow)
                    Text("M. GASTON Hugo")
                    Text("13/05/1999")
                    Text("+33 6 64 53 01 46")
                    Rectangle().frame(height: 1).foregroundColor(Color.yellow)
                    Text("Appt 426 - Batiment B")
                    Text("2 Rue Chemin Vert")
                    Text("Aulnoy-lez-Valenciennes")
                    Text("59300 - France")
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.yellow, lineWidth: 2) // Adding yellow stroke
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.white.opacity(1)))
                        .padding(.top, -10)
                }
                .padding()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("List Animal")
                            .font(.system(size: 20))
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                            .font(.system(size: 13))
                            .font(.title)
                            .bold()
                    }
                    Rectangle().frame(height: 1).foregroundColor(Color.yellow)
                    HStack(alignment: .center, spacing: 25){
                        VStack{
                            Image("chat_photo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                            Text("Olivier")
                                .font(.system(size: 13))
                                .bold()
                                .opacity(0.7)
                        }
                        
                        VStack{
                            Image("chien_photo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                            Text("Sleeppy_zzz")
                                .font(.system(size: 13))
                                .bold()
                                .opacity(0.7)
                        }
                        VStack{
                            Image("chien_photo_2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                            Text("Sitious")
                                .font(.system(size: 13))
                                .bold()
                                .opacity(0.7)
                        }
                    }
                    .padding(.top, 10)
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.yellow, lineWidth: 2) // Adding yellow stroke
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.white.opacity(1)))
                        .padding(.top, -10)
                }
                .padding()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("List Docteur")
                            .font(.system(size: 20))
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                            .font(.system(size: 13))
                            .font(.title)
                            .bold()
                    }
                    Rectangle().frame(height: 1).foregroundColor(Color.yellow)
                    HStack(alignment: .center, spacing: 25){
                        VStack{
                            Image("docter_photo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                            Text("Sebastien")
                                .font(.system(size: 13))
                                .bold()
                                .opacity(0.7)
                        }
                        
                        VStack{
                            Image("docter_photo_2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                            Text("Claire")
                                .font(.system(size: 13))
                                .bold()
                                .opacity(0.7)
                        }
                        VStack{
                            Image("docter_photo_3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                            Text("Simon")
                                .font(.system(size: 13))
                                .bold()
                                .opacity(0.7)
                        }
                    }
                    .padding(.top, 10)
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.yellow, lineWidth: 2) // Adding yellow stroke
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.white.opacity(1)))
                        .padding(.top, -10)
                }
                .padding()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("System")
                            .font(.system(size: 20))
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .opacity(0.4)
                            .font(.system(size: 13))
                            .font(.title)
                            .bold()
                    }
                    Rectangle().frame(height: 1).foregroundColor(Color.yellow)
                    Text("English")
                    
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.yellow, lineWidth: 2) // Adding yellow stroke
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.white.opacity(1)))
                        .padding(.top, -10)
                }
                .padding()
                
                Button(action: {
                    
                }){
                    Text("Log out")
                        .foregroundColor(Color.red)
                    
                }
                .buttonStyle(PlainButtonStyle())
                
                
                Button(action: {
                    
                }){
                    Text("Delete this account")
                        .foregroundColor(Color.red)
                    
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
            }
        }
        .navigationTitle("Profile")
        .navigationBarItems(trailing:
                                Button(action: {
                                    
                                }) {
                                    Text("Log out")
                                        .foregroundColor(Color.red)
                                }
                                .buttonStyle(PlainButtonStyle()))
    }
}

struct animal_menu_Previews: PreviewProvider {
    static var previews: some View {
        animal_menu()
    }
}
