//
//  ProductRow.swift
//  ecommerceDemo
//
//  Created by Yogesh on 01/11/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManger
    var product:Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading,spacing: 10){
                Text(product.name)
                    .bold()
                
                Text("\(product.price) $")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.638, brightness: 0.862))
                .cornerRadius(50)
                .onTapGesture {
                    cartManager.removeFromCart(product:product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth:.infinity, alignment: .leading)
    }
}


#Preview {
    ProductRow(product:ProductList[3])
        .environmentObject(CartManger())
}
