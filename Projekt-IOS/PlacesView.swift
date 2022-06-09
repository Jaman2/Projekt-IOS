//
//  PlacesView.swift
//  jl_2022_06_02_projekt
//
//  Created by student on 02/06/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

struct TempPlace: Identifiable {
    let id = UUID()
    let title : String
    let subtitle: String
    let coordX: Double
    let coordY: Double
}


//widok listy miejsc

struct PlacesView: View {
    @State private var showPlace:Bool = false
    @State private var showCreatePlace:Bool = false
    @State var place = Place(
        title: "Brama Krakowska",
        subtitle: "Brama starozytnia z czasow bardzo dawnych. Mimo nazwy znajduje sie w lublinie",
        coordX: 51.24775457385513,
        coordY: 22.56658679983392)
    
    @State var tempPlaces : [TempPlace] = [
        TempPlace(
        title: "Brama Krakowska",
        subtitle: "Brama starozytnia z czasow bardzo dawnych. Mimo nazwy znajduje sie w lublinie",
        coordX: 51.24775457385513,
        coordY: 22.56658679983392),
        TempPlace(
        title: "Brama Krakowska 2",
        subtitle: "Brama starozytnia z czasow bardzo dawnych. Mimo nazwy znajduje sie w lublinie",
        coordX: 51.24775457385513,
        coordY: 22.56658679983392)
    ]
    
    var body: some View {
        //placeholder
        //todo:
        //zrobic wczytywanie danych z bazy, najlepiej do tablicy objektow Place
        //zrobic foreach na tablicy powyzszej i porobic na jej podstawie navilinki
        NavigationView{
            VStack{
                Button(
                    action: {self.showPlace.toggle()},
                    label: { Text("Pokaż miejsce") }
                ).sheet(isPresented: $showPlace) {
                    PlaceView(place: self.place)
                }
                
                List(tempPlaces) {
                    Text($0.title)
                }.navigationBarTitle("Miejsca")

                Button(
                    action: {self.showCreatePlace.toggle()},
                    label: { Text("Dodaj miejsce") }
                ).sheet(isPresented: $showCreatePlace) {
                    CreatePlaceView()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct PlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView()
    }
}
