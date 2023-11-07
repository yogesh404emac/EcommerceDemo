//
//  CartView.swift
//  ecommerceDemo
//
//  Created by Yogesh on 07/11/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManger: CartManger
    var body: some View {
        ScrollView{
            if cartManger.products.count > 0 {
                ForEach(cartManger.products,id:\.id){
                    product in
                    ProductRow(product: product)
                }
                HStack{
                    Text("Your cart total is ")
                    Spacer()
                    Text("$\(cartManger.total).00")
                        .bold()
                }
                .padding()
                 
            }else{
                Text("Your cart is empty")
            }
        }
        .navigationTitle("My cart")
        .padding()
    }
}
#Preview {
    CartView().environmentObject(CartManger())
}
