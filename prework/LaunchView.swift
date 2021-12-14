//
//  LaunchView.swift
//  Prework
//
//  Created by Michelle Ly on 12/11/21.
//

import SwiftUI
import UIKit

struct LaunchView: View {
    var body: some View {
        ZStack {
            Color.launch.background
                .ignoresSafeArea()
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
