//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by SUYOUNG KIM on 2020/08/03.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]

    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"

    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(self.rotation)).animation(.easeInOut(duration: 5))
            Spacer()
            Divider()
            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
                .padding()
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding( .all)
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0 ..< colornames.count) {
                    Text(self.colornames[$0]).foregroundColor(self.colors[$0])
                }
            }.padding( .all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
