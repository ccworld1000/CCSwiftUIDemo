//
//  RotatedBadgeSymbol.swift
//  Drawing
//
//  Created by CC on 2020/11/1.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
//        RotatedBadgeSymbol()
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
