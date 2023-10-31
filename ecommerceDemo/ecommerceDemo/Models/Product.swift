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

var ProductList = [
    Product(name: "Engagement rings for couples", image: "engagementring", price: 200),
    Product(name: "Diamond valko", image: "dimavalkov", price: 36),
    Product(name: "Sand ", image: "image-3", price: 56),
    Product(name: "Sea ", image: "image-4", price: 87),
    Product(name: "Cream ", image: "Image", price: 66),
    Product(name: "Hand bracelet", image: "kagana", price: 77),
    Product(name: "Gray ", image: "image-7", price: 97),
    Product(name: "Mink ", image: "image-8", price: 90),
    Product(name: "Necklace chain ", image: "engagementring", price: 90),
    Product(name: "Engagement ring ", image: "engagemen", price: 90),
    Product(name: "Necklace ", image: "image-2", price: 90),
    Product(name: "Necklace ", image: "image-6", price: 90),
    Product(name: "Necklace ", image: "image-5", price: 90),
    Product(name: "Necklace ", image: "image-9", price: 90),
]
