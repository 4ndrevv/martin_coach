//
//  animal_food_detail.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_food_detail: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ZStack{
                        Circle()
                            .trim(from: 0, to: 0.67)
                            .stroke(Color.yellow, style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.init(degrees: -90))
                            .background {
                                Circle()
                                    .stroke(.gray.opacity(0.4), lineWidth: 25)
                            }
                            .frame(width: 280, height: 150)
                            .padding(80)
                        Image("gamelle")
                            .resizable()
                            .frame(width: 114, height: 100)
                        
                    }
                    Text("Simulation")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 330, alignment: .leading)
                    VStack{
                        HStack{
                            VStack{
                                Text("Product")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Image("product")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Acane")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }
                            Rectangle().frame(width: 1, height: 60).opacity(0.4).padding()
                            
                            VStack{
                                Text("Total")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Text("90")
                                    .font(.system(size: 33))
                                    .frame(width: 70, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Gram")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }

                            Rectangle().frame(width: 1, height: 60).opacity(0.4).padding()
                            
                            VStack{
                                Text("Given")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Text("55")
                                    .font(.system(size: 23))
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Gram")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }
                            
                            VStack{
                                Text("Rest")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Text("35")
                                    .font(.system(size: 23))
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Gram")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }
                        }
                        Rectangle().frame(height: 1).opacity(0.5)
                            .padding()
                        HStack{
                            VStack{
                                Text("Product")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Image("product_2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Pate")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }
                            Rectangle().frame(width: 1, height: 60).opacity(0.4).padding()
                            
                            VStack{
                                Text("Total")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Text("40")
                                    .font(.system(size: 33))
                                    .frame(width: 70, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Gram")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }

                            Rectangle().frame(width: 1, height: 60).opacity(0.4).padding()
                            
                            VStack{
                                Text("Given")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Text("25")
                                    .font(.system(size: 23))
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Gram")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }
                            
                            VStack{
                                Text("Rest")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                                Text("15")
                                    .font(.system(size: 23))
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Gram")
                                    .font(.system(size: 13))
                                    .bold()
                                    .opacity(0.7)
                            }
                        }
                        Rectangle().frame(height: 1).opacity(0.5)
                            .padding()
                        Button(action: {
                            
                        }){
                            Text("Add another product")
                                .foregroundColor(Color.yellow)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding()
                    .frame(width: 360)
                    .background {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.white.opacity(1))
                            .shadow(color: Color.gray.opacity(0.6), radius: 40) // Set the shadow color to red here
                            .padding(.top, -10)
                    }
                }
                .padding()
                VStack{
                    Text("Food")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 330, alignment: .leading)
                    graph_food()
                }
                .padding()
                
                VStack{
                    Text("Food activity")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 330, alignment: .leading)
                    graph_food()
                }
                .padding()
            }
        }
        .navigationTitle("My Animals")
        .navigationBarItems(trailing:
                                Button(action: {
                                }) {
                                    Text("Add")
                                })
    }
}

struct animal_food_detail_Previews: PreviewProvider {
    static var previews: some View {
        animal_food_detail()
    }
}
