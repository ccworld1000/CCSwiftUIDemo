//
//  ContentView.swift
//  Landmarks
//
//  Created by CC on 2020/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, SwiftUI!")
        
//        Text("Turtle Rock")
//            .font(.title)
//            .foregroundColor(.green)
        
//        Text("Turtle Rock")
//            .font(.title)
//            .foregroundColor(.red)
        
        VStack(alignment: .leading) {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)

            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)

                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
