//
//  animal_list.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 14/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_list: View {

    @State var showModal_animal = false
    @State var showModal_user = false
    @State var showModal_animal_add = false
    @Environment(\.presentationMode) var presentationMode
    
    
    
    var body: some View {
            NavigationView {
                    ScrollView {
                        Button(action:{showModal_animal = true}) {
                            animal_tab()
                            }
                            .fullScreenCover(isPresented: $showModal_animal) {
                                                animal()
                            }
                        
                    }
                    .navigationTitle("My Animals")
                    .navigationBarItems(trailing:
                                            Button(action: {
                                                showModal_animal_add = true
                                            }) {
                                                Image(systemName: "plus.circle.fill")
                                            }
                                            .fullScreenCover(isPresented: $showModal_animal_add) {
                                                animal_add()
                                        })
                    .navigationBarItems(leading:
                                        Button(action: {
                                            showModal_user = true
                                        }) {
                                            Image(systemName: "person.circle.fill")
                                        }
                                        .fullScreenCover(isPresented: $showModal_user) {
                                            user()
                                    }
                                )
            }
        }
    
}

struct animal_list_Previews: PreviewProvider {
    static var previews: some View {
        animal_list()
    }
}
