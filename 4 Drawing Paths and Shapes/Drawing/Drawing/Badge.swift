//
//  Badge.swift
//  Drawing
//
//  Created by CC on 2020/11/1.
//

import SwiftUI

//struct Badge: View {
//    var body: some View {
////        Text("Badge")
//        Path { path in
//            var width: CGFloat = 100.0
//            let height = width
//            path.move(to: CGPoint(x: width * 0.95, y: height * 0.20))
//
//            HexagonParameters.points.forEach {
//                path.addLine(to: .init(
//                                x: width * $0.useWidth.0 * $0.xFactors.0,
//                                y: height * $0.useHeight.0 * $0.yFactors.0))
//
//                path.addQuadCurve(
//
//                    to: .init(
//
//                        x: width * $0.useWidth.1 * $0.xFactors.1,
//
//                        y: height * $0.useHeight.1 * $0.yFactors.1
//
//                    ),
//
//                    control: .init(
//
//                        x: width * $0.useWidth.2 * $0.xFactors.2,
//
//                        y: height * $0.useHeight.2 * $0.yFactors.2
//
//                    )
//
//                )
//            }
//        }
//        .fill(Color.black)
//    }
//}

//struct Badge: View {
//    var badgeSymbols: some View {
//
//        RotatedBadgeSymbol(angle: .init(degrees: 0))
//
//            .opacity(0.5)
//
//    }
//
//    var body: some View {
//        ZStack {
//            BadgeBackground()
//
//            GeometryReader { geometry in
//                            self.badgeSymbols
//                                .scaleEffect(1.0 / 4.0, anchor: .top)
//                                .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
//
//                        }
//        }
//    }
//
//
////    var body: some View {
////        GeometryReader { geometry in
////
////            Path { path in
////
////                var width: CGFloat = min(geometry.size.width, geometry.size.height)
////
////                let height = width
////
////                let xScale: CGFloat = 0.832
////
////                let xOffset = (width * (1.0 - xScale)) / 2.0
////
////                width *= xScale
////
////                path.move(
////
////                    to: CGPoint(
////
////                        x: xOffset + width * 0.95,
////
////                        y: height * (0.20 + HexagonParameters.adjustment)
////
////                    )
////
////                )
////
////                HexagonParameters.points.forEach {
////
////                    path.addLine(
////
////                        to: .init(
////
////                            x: xOffset + width * $0.useWidth.0 * $0.xFactors.0,
////
////                            y: height * $0.useHeight.0 * $0.yFactors.0
////
////                        )
////
////                    )
////
////
////
////                    path.addQuadCurve(
////
////                        to: .init(
////
////                            x: xOffset + width * $0.useWidth.1 * $0.xFactors.1,
////
////                            y: height * $0.useHeight.1 * $0.yFactors.1
////
////                        ),
////
////                        control: .init(
////
////                            x: xOffset + width * $0.useWidth.2 * $0.xFactors.2,
////
////                            y: height * $0.useHeight.2 * $0.yFactors.2
////
////                        )
////
////                    )
////
////                }
////
////            }
////            .fill(LinearGradient(
////
////                gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
////
////                startPoint: .init(x: 0.5, y: 0),
////
////                endPoint: .init(x: 0.5, y: 0.6)
////
////            ))
////
////            .aspectRatio(1, contentMode: .fit)
////
////////            .fill(Color.black)
//////            .fill(LinearGradient(
////////                    gradient: Gradient(colors: [Color.red, Color.blue]),
//////                    gradient: .init(colors: [Self.gradientStart, Self.gradientEnd])),
//////                    startPoint: CGPoint(x: 0.5, y: 0),
//////                    endPoint: CGPoint(x: 0.5, y: 0.6))
//////            .aspectRatio(1, contentMode: .fit)
////
////        }
////
////    }
//
//    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
//
//     static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
//
//}

struct Badge: View {

    static let rotationCount = 8

    

    var badgeSymbols: some View {

        ForEach(0..<Badge.rotationCount) { i in

            RotatedBadgeSymbol(

                angle: .degrees(Double(i) / Double(Badge.rotationCount)) * 360.0

            )

        }

        .opacity(0.5)

    }

    

    var body: some View {

        ZStack {

            BadgeBackground()

            

            GeometryReader { geometry in

                self.badgeSymbols

                    .scaleEffect(1.0 / 4.0, anchor: .top)

                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)

            }

        }

        .scaledToFit()

    }

}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
