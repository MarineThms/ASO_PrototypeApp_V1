//
//  Cart.swift
//  FruitStore
//
//  Created by Mohammad Azam on 10/6/21.
//

import Foundation

class Cart: ObservableObject {
    
    @Published private(set) var items: [LAssociations] = [LAssociations]()
//    @Published private(set) var Moinsitems: [LAssociations] = [LAssociations]()
    
    
    var cartTotal: Double {
        return items.reduce(0) { result, association in
            result + association.price
            
                
                
        }
    }
    
//    var cartMoinsTotal: Double {
//        return Moinsitems.reduce(0) { result, association in
//            result - association.price
//            
//                
//                
//        }
//    }
    
    var cartCount: Int {
        items.count
           
    }
    
    func addToCart(_ item: LAssociations) {
        items.append(item)
    }
    
//    func LessToCart(_ item: LAssociations) {
//        items.remove(at: 1)
//    }
}
