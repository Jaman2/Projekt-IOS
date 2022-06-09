//
//  PlaceView.swift
//  jl_2022_06_02_projekt
//
//  Created by student on 02/06/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

//widok pojedynczego miejsca

struct PlaceView: View {
    @State var place: Place
    @State private var showPlaceMap:Bool = false
    
    var body: some View {
        VStack{
            Text(place.title!).fontWeight(.bold)
                .font(.title)
                .multilineTextAlignment(.center)
            Text(place.subtitle!).font(.body)
                .multilineTextAlignment(.center)
                .padding(.bottom,50)
            Button(
                action: {self.showPlaceMap.toggle()},
                label: { Text("Wyświetl mapę") }
            ).sheet(isPresented: $showPlaceMap) {
                PlaceMapView(place: self.place)
            }
        }
    }
}

struct PlaceView_Previews: PreviewProvider{
    //staly objekt, istnieje tylko dlatego bo swift kaze ¯\_(ツ)_/¯
    static let temp = Place(title: "Placeholder", subtitle: "Placeholder", coordX: 44.232323, coordY: 44.42132132)
    
    static var previews: some View{
        PlaceView(place: temp)
    }
}
