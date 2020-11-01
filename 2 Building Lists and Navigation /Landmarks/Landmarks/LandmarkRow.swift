//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by CC on 2020/11/1.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkRow(landmark: landmarkData[0])
        
//        LandmarkRow(landmark: landmarkData[1])
//            .previewLayout(.fixed(width: 300, height: 70))
        
//        Group {
//            LandmarkRow(landmark: landmarkData[0])
//                .previewLayout(.fixed(width: 300, height: 70))
//
//            LandmarkRow(landmark: landmarkData[1])
//                .previewLayout(.fixed(width: 300, height: 70))
//        }
        
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
