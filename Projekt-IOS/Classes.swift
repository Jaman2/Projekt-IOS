//
//  Classes.swift
//  jl_2022_06_02_projekt
//
//  Created by Małgorzata Ludian on 09/06/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import Foundation
import MapKit

//Klasa miejsc, obiekty tej klasy przekazujemy do widoku pozostalych widokow
//pole title -- nazwa miejsca np.: Brama krakowska
//pole subtitle -- opis miejsca np.: XIV-wieczna brama strzegąca dostępu do Starego Miasta w Lublinie, historyczny symbol grodu
//pole coordinate -- pole typu cl, przechowuje koordynaty miejsca potrzebne do wysiwetlenia na mapie jako adnotacja
//Wklepalem dwa konstruktory pierwszy przyjmuje obiekt CLLocationCoordinate a drugi kooordynaty x i y w CGFloat, proponuje uzywac tego drugiego bo ladniejszy :3
//proponuje oprzec caly projekt o ta klase, jako ze przechowuje wszystko co nam potrzebne

class Place: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    init(title: String?,
    subtitle: String?,
    coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    init(title: String?,
         subtitle: String?,
         coordX:  Double,
         coordY: Double){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = CLLocationCoordinate2D(latitude: coordX,longitude: coordY)
    }
}



