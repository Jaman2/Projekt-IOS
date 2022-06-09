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
        VStack{
            Text("Przewodnik po miescie Lublin").fontWeight(.bold)
                .font(.title)
                .multilineTextAlignment(.center);
            Image("logo").resizable()
            .   scaledToFit()
                .padding()
            Button(
                action: {self.showPlaces.toggle()},
                label: { Text("Rozpocznij") }
            ).sheet(isPresented: $showPlaces) {
                PlacesView()
            }.padding(.top, 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
