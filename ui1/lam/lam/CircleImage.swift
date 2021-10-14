//
//  SwiftUIView.swift
//  lam
//
//  Created by Vcvc on 2021/10/15.
//

import SwiftUI

struct Circleimage: View {
    var body: some View {
        Image("swiftui_icon")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 8)
    }
}

struct CircleImage_show: PreviewProvider {
    static var previews: some View {
        Circleimage()
    }
}
