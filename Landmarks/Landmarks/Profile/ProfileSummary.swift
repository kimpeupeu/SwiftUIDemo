//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by SUYOUNG KIM on 2020/08/21.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()

    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)

            Text("Notifications: \(self.profile.prefersNotifications ? "On" : "Off")")
            Text("Seasonal Photos: \(self.profile.seasonalPhoto.rawValue)")
            Text("Goal Date: \(self.profile.goalDate, formatter: Self.goalFormat)")

            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "First Hike")
                            .hueRotation(Angle(degrees: 45))
                        HikeBadge(name: "First Hike")
                            .hueRotation(Angle(degrees: 30))
                    }
                }
                .frame(height: 140)
            }
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                HikeView(hike: hikeData[0])
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
