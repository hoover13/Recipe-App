//
//  Recipe.swift
//  Recipe List App
//
//  Created by Hoover on 10/17/23.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var image: String
    var featured: Bool
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [Ingredient]
    var highlights: [String]
    var directions: [String]
    
}

class Ingredient: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}
