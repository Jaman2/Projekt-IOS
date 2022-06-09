//
//  ContentView.swift
//  jl_2022_06_02_projekt
//
//  Created by student on 02/06/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

//Widok podstawowy / powitalny



struct ContentView: View {
    @State private var showPlaces:Bool = false
    
    var body: some View {
        NavigationView{
            NavigationLink(
            destination: PlacesView(),
            label:{Text("Rozpocznij")})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
