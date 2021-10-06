//
//  CatDetail.swift
//  Gatitos1
//
//  Created by kino on 19/08/2021.
//


import SwiftUI
//import URLImage
 

struct CatDetail: View {
    var cat : Cat
    
    var body: some View {
    
            VStack() {
                Text(cat.name)
                    .font(.largeTitle)
                    .font(.system(size: 18))
                    .foregroundColor(.blue)
                if cat.image?.url != nil {
                    var yourURL:NSUL! = cat.image?.url
                    var a = yourURL.absoluteString
                    ImageWithURL(yourURL) {
                        image in
                        image.resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                }
                else {
                    Text("No imagen")
                    }
                HStack(spacing : 20) {
                Text(cat.origin)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    if let code = cat.country_codes
                    {
                      Text(code)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    }
                }.padding()
            
                HStack{
                Text(cat.temperament)
                       .font(.system(size: 14))
                       .foregroundColor(.black)
                }
                .padding()
                HStack{
                Text(cat.description)
                       .font(.system(size: 14))
                       .foregroundColor(.black)
                }
                .padding()
                
        
          HStack (spacing: 15){
                        if let wiki = cat.wikipedia_url {
                            Button("Wiki link") {
                                UIApplication.shared.open(
                                    (cat.wikipedia_url)!)
                            }
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .border(Color.blue)
                            .font(.headline)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        } else  {
                            Button("Wiki link") {}
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                                .font(.title)
                            .border(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        }
                        
                        if let vets = cat.vetstreet_url {
                        Button("Vets link") {
                            UIApplication.shared.open(
                                (cat.vetstreet_url)!)
                        }
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .border(Color.blue)
                        .font(.title)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        } else  {
                                Button("Vets link") {}
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                                .border(Color.blue)
                                    .font(.title)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                         
                }
            }
                
            }
            //.frame(maxHeight:.infinity,  alignment: .top)
    //.padding()
       
        }
           

  





