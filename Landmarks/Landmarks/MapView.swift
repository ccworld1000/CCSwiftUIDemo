//
//  MapView.swift
//  Landmarks
//
//  Created by CC on 2020/10/31.
//

import SwiftUI
import MapKit

//struct MapView: View {
struct MapView: UIViewRepresentable {
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        <#code#>
//    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate =  CLLocationCoordinate2DMake(34.011286, -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
