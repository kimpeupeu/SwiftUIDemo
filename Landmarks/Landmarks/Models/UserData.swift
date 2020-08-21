//
//  UserData.swift
//  Landmarks
//
//  Created by SUYOUNG KIM on 2020/08/18.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
