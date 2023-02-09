//
//  Product.swift
//  FruitStore
//
//  Created by Mohammad Azam on 10/7/21.
//

import Foundation
import SwiftUI

struct Product: Identifiable, Codable {
    var id = UUID()
    let photo: String
    let price: Int
}

extension Product {
    
    static func all() -> [Product] {
        
        return [
            Product(photo: "🍎", price: 1),
            Product(photo: "🍌", price: 2),
            Product(photo: "🍒", price: 3),
            Product(photo: "🍉", price: 5),
        ]
        
    }
    
}


struct LAssociations: Identifiable, Codable {

    var id = UUID()

let nameAssociation: String

let logoAssociation : String
    
    let price: Double

}
extension LAssociations{
    
    static func all() -> [LAssociations] {
        
        return [
        
            LAssociations(nameAssociation: "Restaurant du coeur", logoAssociation: "RestosDuCoeur", price: 1),
            LAssociations(nameAssociation: "Secours Populaire", logoAssociation: "SecoursPopulaire", price: 1),
            
            LAssociations(nameAssociation: "Secours Catholique", logoAssociation: "SecoursCatholique", price: 1),
            
            LAssociations(nameAssociation: "La Banque Alimentaire", logoAssociation: "BanqueAlimentaire", price: 1),
            
            LAssociations(nameAssociation: "La Croix Rouge", logoAssociation: "CroixRouge", price: 1)
            
            
        
        
        ]
    }
}
