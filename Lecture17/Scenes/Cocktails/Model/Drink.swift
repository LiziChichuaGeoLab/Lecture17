//
//  Drink.swift
//  Lecture17
//
//  Created by LiziChichua on 24.12.22.
//

import Foundation

struct DrinkResponse: Codable {
    let drinks: [Drink]
}

struct Drink: Codable {
    let name: String
    let image: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case name   = "strDrink"
        case image  = "strDrinkThumb"
        case id     = "idDrink"
    }
}
