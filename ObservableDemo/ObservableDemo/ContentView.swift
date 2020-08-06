//
//  ContentView.swift
//  ObservableDemo
//
//  Created by SUYOUNG KIM on 2020/08/06.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var timerData: TimerData = TimerData()

    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
