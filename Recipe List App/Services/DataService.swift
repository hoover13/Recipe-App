//
//  DataService.swift
//  Recipe List App
//
//  Created by Hoover on 10/17/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do {
                   let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    for r in recipeData {
                        r.id = UUID()
                    }
                    
                    return recipeData
                }
                catch {
                    print(error)
                }
            }
            catch {
                print(error)
            }
        }
        
        return [Recipe]()
    }
}
