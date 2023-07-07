//
//  tab_bar.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 06/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct tab_bar: View {
    var body: some View {
        Home1()
    }
}

struct tab_bar_Previews: PreviewProvider {
    static var previews: some View {
        tab_bar()
    }
}

//tab item

var tabItems = ["home","trophy","user"]

struct Home1 : View {
    @State var selected = "Home"
    
    var body: some View {
        
        TabView(selection: $selected){
            Color.red.tag(tabItems[0])
            Color.red.tag(tabItems[1])
            Color.red.tag(tabItems[2])
            
            
        }
    }
}
