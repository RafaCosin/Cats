//
//  CatMain.swift
//  Cats
//
//  Created by kino on 19/08/2021.
//

import SwiftUI



struct CatMain: View {
    @State var cats: [Cat] = []

    @State var ordOrigen = "orden"

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        NavigationView {
        List(cats, id: \.name) { cat in
            VStack(alignment: .leading) {
                NavigationLink(destination: CatDetail(cat: cat)) {
                
                }
                HStack(spacing : 10){
                    
                    if cat.image?.url != nil {
                        URLImage((cat.image?.url)!) {
                            image in
                            image.resizable().frame(width: 60, height: 60)
                        }
                        .clipShape(Circle())
                    }
                    else {
                        Text("No picture")
                          .padding()
                          .background(
                            Circle()
                              .stroke(Color.red, lineWidth: 4)
                              .padding(6)
                            )
                    }
                    
                    Text(cat.name)
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                 
                    Text(cat.origin)
                        .font(.system(size: 14))
                        .foregroundColor(.black)
            }
                HStack {
                    Text(cat.description)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    
                }
                }
            
        }
        
        .navigationBarTitle(Text("Cats by breed"))
        
        }
    }
}

struct CatMain_Previews: PreviewProvider {
    static var previews: some View {
        CatMain()
    }
}
