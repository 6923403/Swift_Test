//
//  ContentView.swift
//  practice
//
//  Created by Vcvc on 2021/6/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView().ignoresSafeArea(edges: .top).frame(height: 300)
            CircleImage().offset(y: -130)
                .padding(.bottom, -130)
        VStack(alignment: .leading) {
            VStack {
                Text("Turtle Rock").font(.title).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            HStack {
                Text("Joshua Tree National Park").font(.subheadline)
                Spacer()
                Text("California").font(.subheadline)
            }
            .font(.subheadline)
                            .foregroundColor(.secondary)
            Divider()

                            Text("About Turtle Rock")
                                .font(.title2).foregroundColor(.gray)
                            Text("Descriptive text goes here.")
        }
        .padding()
        Spacer()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
