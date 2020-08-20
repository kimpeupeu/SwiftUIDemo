//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by SUYOUNG KIM on 2020/08/18.
//  Copyright © 2020 SUYOUNG KIM. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
