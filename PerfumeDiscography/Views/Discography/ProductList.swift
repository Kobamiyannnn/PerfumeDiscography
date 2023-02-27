//
//  ProductList.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/24
//  
//

import SwiftUI

struct ProductList: View {
    var body: some View {
        NavigationView {
            List(products) { product in
                NavigationLink {
                    ProductDetail(product: product)
                } label: {
                    ProductRow(product: product)
                }
            }
            .navigationTitle("Discography")
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}
