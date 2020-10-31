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
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(.red)
            
            
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
