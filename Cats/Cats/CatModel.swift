//
//  CatModel.swift
//  Cats
//
//  Created by kino on 19/08/2021.
//

import Foundation
struct Cat: Codable  {
    enum CodingKeys: String, CodingKey {

    case  id
    case name
    case vetstreet_url = "vetstreet_url"
    case origin = "origin"
    case temperament
    case country_codes = "country_codes"
    case country_code = "country_code"
    case description
    case wikipedia_url = "wikipedia_url"
    case image = "image"

}
    
public var id: String
public var name: String
public var vetstreet_url: URL?
public var origin: String
public var temperament: String
public var country_codes: String
public var country_code: String
public var description: String
public var wikipedia_url: URL?
public var image: Image?
    


}

struct Image: Codable {
    
var url: URL?
    
}
