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
                    .cornerRadius(5)
                product.artwork
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(5)
            }
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                HStack {
                    Text(product.edition)
                    if product.ownsThis {
                        Image(systemName: "p.square.fill")
                            .foregroundColor(.teal)
                            .padding(.leading, -7)
                    }
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding(.vertical, 4)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: products[34])
    }
}
