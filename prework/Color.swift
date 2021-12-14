//
//  Color.swift
//  Prework
//
//  Created by Michelle Ly on 12/11/21.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
}

struct ColorTheme{
    let background = Color("BackgroundColor")
}

struct LaunchTheme{
    let background = Color("LaunchBackground")
}
