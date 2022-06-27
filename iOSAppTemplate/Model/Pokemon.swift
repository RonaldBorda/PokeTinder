//
//  Pokemon.swift
//  iOSAppTemplate
//
//  Created by Ronald Meliton Borda Bernaola on 26/06/22.
//

import Darwin

struct Pokemon: Codable{
    let count : Int?
    let next: String?
    let results: [Result]
}

struct Result: Codable{
    let name: String
    let url: String
}
