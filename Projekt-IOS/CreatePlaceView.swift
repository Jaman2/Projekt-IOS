//
//  CreatePlaceView.swift
//  jl_2022_06_02_projekt
//
//  Created by student on 02/06/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI

//widok tworzenia nowego miejsca

struct CreatePlaceView: View {
    @State var tytul:String=""
    @State var desc:String=""
    @State var cordX:String=""
    @State var cordY:String=""
    var body: some View {
    VStack{
    Text("Dodaj miejsce").fontWeight(.bold)
    .font(.title)
    .multilineTextAlignment(.center)
    TextField("Wprowadz tytul", text: $tytul)
    .font(Font.system(size: 16))
    .padding()
    .background(RoundedRectangle(cornerRadius:30).fill(Color.white))
    .foregroundColor(.blue)
    TextField("Wprowadz opis", text: $desc)
    .font(Font.system(size: 16))
    .padding()
    .background(RoundedRectangle(cornerRadius:30).fill(Color.white))
    .foregroundColor(.blue)
    TextField("Wprowadz koordynat X", text: $cordX)
    .foregroundColor(Color.white)
    .font(Font.system(size: 16))
    .padding()
    .background(RoundedRectangle(cornerRadius:30).fill(Color.white))
    .foregroundColor(.blue)
    TextField("Wprowadz koordynat Y", text: $cordY)
    .font(Font.system(size: 16))
    .padding()
    .background(RoundedRectangle(cornerRadius:30).fill(Color.white))
    .foregroundColor(.blue)

    }
    }
}

struct CreatePlaceView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePlaceView()
    }
}
