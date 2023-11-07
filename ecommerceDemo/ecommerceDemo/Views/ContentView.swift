//
//  ContentView.swift
//  ecommerceDemo
//
//  Created by Yogesh on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet:Bool = false
    @State private var detents: PresentationDetent = .large
    @StateObject var cartManager = CartManger()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    var body: some View {
        
        NavigationView{
            
            ScrollView {
                LazyVGrid(columns: columns,spacing: 20) {
                    ForEach(ProductList,id: \.id){ product in
                        ProductCart(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle("jewellery Shop")
            .font(.subheadline)
            .toolbar(content: {
                           ToolbarItem(placement: .navigationBarTrailing) {
                               HStack {
                                   NavigationLink {
                                       CartView()
                                           .environmentObject(cartManager)
                                   } label: {
                                       CartButton(numberOfProducts: cartManager.products.count).foregroundColor(.black)
                                   }
                                   
                               }
                           }
            }).background(LinearGradient(gradient: Gradient( colors: [Color.gray,Color.red]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

#Preview {
    ContentView()
}
