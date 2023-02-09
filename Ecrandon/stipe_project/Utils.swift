//
//  Utils.swift
//  FruitStore
//
//  Created by Mohammad Azam on 10/6/21.
//

import Foundation


func formatPrice(_ price: Double) -> String? {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencySymbol = "€"
    formatter.currencyCode = "EUR"
    return formatter.string(from: NSNumber(value: price))
}
