//
//  MapView.swift
//  superKahramanSwiftUI
//
//  Created by MacBook Pro on 7.02.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //Update için
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        let region = MKCoordinateRegion(center:coordinate , span: span)
        uiView.setRegion(region, animated: true)
        
    }
    func makeUIView(context: Context) -> MKMapView {
        //Ne tarz bir uiviewKit kullanıcan
        MKMapView(frame: .zero)
    }
   
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: herosList[0].coordinateLocation)
    }
}
