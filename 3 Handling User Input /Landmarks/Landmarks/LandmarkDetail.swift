//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by CC on 2020/11/1.
//

import SwiftUI

//struct LandmarkDetail: View {
//    var body: some View {
////        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        VStack {
//            MapView()
//                .edgesIgnoringSafeArea(.top)
//                .frame(height: 300)
//
//            CircleImage()
//                .offset(y: -130)
//                .padding(.bottom, -130)
//
//            VStack(alignment: .leading) {
//                Text("Turtle Rock")
//                    .font(.title)
//
//                HStack(alignment: .top) {
//                    Text("Joshua Tree National Park")
//                        .font(.subheadline)
//
//                    Spacer()
//
//                    Text("California")
//                        .font(.subheadline)
//
//                }
//            }
//            .padding()
//
//            Spacer()
//        }
//    }
//}

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
//                Text("Turtle Rock")
                Text(landmark.name)
                    .font(.title)
                
                HStack(alignment: .top) {
//                    Text("Joshua Tree National Park")
                    Text(landmark.park)
                        .font(.subheadline)

                    Spacer()

//                    Text("California")
                    Text(landmark.state)
                        .font(.subheadline)

                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkDetail()
        LandmarkDetail(landmark: landmarkData[0])
    }
}
