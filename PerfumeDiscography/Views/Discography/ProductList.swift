//
//  ProductList.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/24
//  
//

import SwiftUI

struct ProductList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showOwningsOnly = false

    var filteredOwnings: [Product] {
        modelData.products.filter { product in
            (!showOwningsOnly || product.ownsThis)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showOwningsOnly) {
                    Text("I have this!")
                }

                ForEach(filteredOwnings) { product in
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
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
            .environmentObject(ModelData())
    }
}
