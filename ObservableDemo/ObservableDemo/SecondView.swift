//
//  SecondView.swift
//  ObservableDemo
//
//  Created by SUYOUNG KIM on 2020/08/08.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI

struct SecondView: View {

    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View").font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
        }.padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(TimerData())
    }
}
