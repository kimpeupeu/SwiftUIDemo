//
//  LandmarkList.swift
//  Landmarks
//
//  Created by SUYOUNG KIM on 2020/08/17.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData

    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites only")
            }
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination:
                        LandmarkDetail(landmark: landmark)
                            .environmentObject(self.userData)
                    ) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }.navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone Xs", "iPad Pro (9.7-inch)"], id: \.self) {
            deviceName in
            NavigationView {
                LandmarkList()
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
