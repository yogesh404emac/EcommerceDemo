//
//  CartButton.swift
//  ecommerceDemo
//
//  Created by Yogesh on 31/10/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(Color(hue: 1.0, saturation: 0.638, brightness: 0.862))
                    .cornerRadius(50)
            }
            
        }
        
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
