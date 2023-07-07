//
//  extensions.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 22/06/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

extension Color {
    static let  background = LinearGradient(gradient: Gradient(colors: [Color("background_2"), Color("background_1")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let nav_bar_color = Color("nav_bar_color")
    static let bottom_sheet_background = Color("bottom_sheet_background")
    static let bottom_sheet_border_top = Color("bottom_sheet_border_top")
    static let transparentColor = UIColor.clear
}
