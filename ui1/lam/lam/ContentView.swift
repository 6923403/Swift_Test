//
//  ContentView.swift
//  lam
//
//  Created by Vcvc on 2021/10/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circleimage()
                .offset(y: -110)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text("Hello, Ui.")
                    .font(.title)
                    .foregroundColor(.blue)
                HStack {
                    Text("漂亮")
                        .foregroundColor(.purple)
                        .font(.subheadline)
                    
                    Text("且充满活力")
                        .font(.subheadline)
                        .foregroundColor(.orange)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
