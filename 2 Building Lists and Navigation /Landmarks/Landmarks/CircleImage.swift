//
//  CircleImage.swift
//  Landmarks
//
//  Created by CC on 2020/10/31.
//

import SwiftUI

//struct CircleImage: View {
//    var body: some View {
////        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
////        Image("turtlerock")
////            .clipShape(Circle())
////            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
////            .shadow(radius: 10)
//
//        Image("turtlerock")
//            .clipShape(Circle())
//            .overlay(Circle().stroke(Color.white, lineWidth: 4))
//            .shadow(radius: 10)
//    }
//}

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
//        CircleImage()
        CircleImage(image: Image("turtlerock"))
    }
}
