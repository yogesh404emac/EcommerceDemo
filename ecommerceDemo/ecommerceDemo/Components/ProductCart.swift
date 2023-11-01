//
//  ProductCart.swift
//  ecommerceDemo
//
//  Created by Yogesh on 31/10/23.
//

import SwiftUI

struct ProductCart: View {
    @EnvironmentObject var cartManger: CartManger
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment:.leading){
                    Text(product.name)
                        .bold()
                    Text("\(product.price) $")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180,height: 250)
            .shadow(radius: 3)
            Button{
                cartManger.addToCart(product: product)
            }label: {
                Image(systemName: "cart.fill.badge.plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
            
        }
        
    }
}
#Preview {
    ProductCart(product: ProductList[0])
        .environmentObject(CartManger())
}
