//
//  Product.swift
//  ecommerceDemo
//
//  Created by Yogesh on 30/10/23.
//

import Foundation

struct Product:Identifiable{
    var id = UUID()
    var name :String
    var image :String
    var price:Int
}
