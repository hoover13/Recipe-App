//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Hoover on 10/17/23.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
    }
    
}
