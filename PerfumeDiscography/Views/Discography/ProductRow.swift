//
//  ProductRow.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/24
//  
//

import SwiftUI

struct ProductRow: View {
    var product: Product

    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.white)
                    .frame(width: 50, height: 50)
                product.artwork
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
            }
            Text(product.name)
                .lineLimit(1)
                .minimumScaleFactor(0.8)

            Spacer()
        }
        .frame(height: 50)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: products[0])
    }
}
