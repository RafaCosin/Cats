//
//  ContentView.swift
//  Cats
//
//  Created by kino on 19/08/2021.
//

import SwiftUI

struct ContentView: View {
    private let imageURL = "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
    private let imageURL2 = "https://i.redd.it/mn5m2km7hmv01.jpg"
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        let url = URL(string: imageURL)
        //if  imageURL != imageURL2 {
            ImageWithURL(url!)
        //}
         
       // else {
       //     Image("no-image")
       // }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
