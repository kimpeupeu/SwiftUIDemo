//
//  LandmarkList.swift
//  Landmarks
//
//  Created by SUYOUNG KIM on 2020/08/17.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) {
                landmark in NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach (["iPhone 8", "iPhone Xs", "iPad Pro (9.7-inch)"], id: \.self) {
            deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
