//
//  LandmarkNavList.swift
//  Landmarks
//
//  Created by CC on 2020/11/1.
//

import SwiftUI

struct LandmarkNavList: View {
//    var body: some View {
////        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        NavigationView {
//            List(landmarkData) { landmark in
//                LandmarkRow(landmark: landmark)
//            }
//            .navigationBarTitle(Text("Landmarks"))
//        }
////        .navigationBarTitle(Text("Landmarks"))
//    }
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
//                LandmarkRow(landmark: landmark)
//                NavigationLink(
//                    destination: LandmarkDetail()) {
//                    LandmarkRow(landmark: landmark)
//                }
                
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkNavList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkNavList()
    }
}
