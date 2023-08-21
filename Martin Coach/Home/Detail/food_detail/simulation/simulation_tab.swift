//
//  simulation_tab.swift
//  Martin Coach
//
//  Created by Nam on 21/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct simulation_tab: View {
    var body: some View {
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
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
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle( cornerRadius: 10, style: .continuous)
                .fill(.white)
        }
    }
}

struct simulation_tab_Previews: PreviewProvider {
    static var previews: some View {
        simulation_tab()
    }
}
