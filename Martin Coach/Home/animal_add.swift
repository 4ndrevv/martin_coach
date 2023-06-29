//
//  animal_add.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 20/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_add: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
            NavigationView {
                    ScrollView {
                        VStack(alignment: .center){
                            
                            Circle()
                                .frame(width: 80, height: 80)
                                .padding()
                            Text("Profile photo")
                            
                            ZStack{
                                TextField("Nom et Prénom", text: .constant(""))
                                    .frame(width: 360, height: 50)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(radius: 4)
                                    .padding()

                            }
                            .padding(.top)
                            
                            
                                    }
                                    }
                                    .navigationTitle("Add new animal")
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

struct animal_add_Previews: PreviewProvider {
    static var previews: some View {
        animal_add()
    }
}
