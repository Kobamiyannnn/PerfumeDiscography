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
        List(products, id: \.self) { product in
            ProductRow(product: product)
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}
