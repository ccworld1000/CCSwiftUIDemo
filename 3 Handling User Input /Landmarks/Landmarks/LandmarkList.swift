//
//  LandmarkList.swift
//  Landmarks
//
//  Created by CC on 2020/11/1.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
//        List {
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
//        }
        
//        List(landmarkData, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
        List(landmarkData) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
