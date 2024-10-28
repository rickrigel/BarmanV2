//
//  Cocktail.swift
//  BarmanV2
//
//  Created by RICARDO SANCHEZ on 20/10/24.
//

import Foundation

/*
struct Cocktail: Codable {  // implementación del protocolo
    var directions:String
    var ingredients:String
    var name:String
    var img:String
}
*/


struct Cocktail {
    
    let directions : String
    let ingredients : String
    let name : String
    let img : String
    
    
    //parametro dict de diccionario para nuestra estructura
    init(dict: [String : String]){
        self.img = dict["img"]!
        self.name = dict["name"]!
        self.directions = dict["directions"]!
        self.ingredients = dict["ingredients"]!
    }
    
}
