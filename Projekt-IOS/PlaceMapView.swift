//
//  PlaceMapView.swift
//  jl_2022_06_02_projekt
//
//  Created by student on 02/06/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI
import MapKit

//widok mapy

struct MapView: UIViewRepresentable{
    @State var place : Place

    func makeUIView(context: Context) -> MKMapView {
        let myMap = MKMapView(frame: .zero)
        return myMap
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: place.coordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.addAnnotations([place])
    }
}

struct PlaceMapView: View {
    var place: Place
    var body: some View {
        VStack{
        MapView(place: place)
                .frame(
                    width: 300,
                    height: 400,
                    alignment: .center)
            
        }
    }
}

struct PlaceMapView_Previews: PreviewProvider{
    //staly objekt, istnieje tylko dlatego bo swift kaze ¯\_(ツ)_/¯
    static let temp = Place(title: "Placeholder", subtitle: "Placeholder", coordX: 44.232323, coordY: 44.42132132)
    
    static var previews: some View{
        PlaceMapView(place: temp)
    }
}
