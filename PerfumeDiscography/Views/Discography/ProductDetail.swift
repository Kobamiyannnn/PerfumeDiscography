//
//  ProductDetail.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import SwiftUI

struct ProductDetail: View {
    @Environment(\.dismiss) var dismiss

    var product: Product

    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Artwork(product: product)
                    .padding(.vertical)

                Text(product.name)
                    .font(.title)
                    .bold()
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)

                VStack {
                    HStack {
                        Text("\(product.category.rawValue)・\(product.edition)")
                        OwningButton(isSet: .constant(product.ownsThis))
                    }
                    .font(.subheadline)

                    VStack {
                        Text("\(product.releaseDate) release")
                        Text("\(product.id)")
                    }
                    .font(.caption)
                }
                .foregroundColor(.secondary)

                Divider()
            }

            VStack(alignment: .leading) {
                Text("Contents")
                    .font(.title)
                    .bold()

                Text("CD")
                    .font(.title2)
                    .fontWeight(.semibold)
                Tunes(product: product)
                BonusContents(product: product)
                Divider()
            }

            VStack(alignment: .leading) {
                HStack {
                    Text("Description")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                Text(product.description)
            }
        }
        .padding(.horizontal)
        .navigationTitle(product.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }, label: { Image(systemName: "chevron.backward") })
            }
        }
    }
}


struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail(product: products[34])
    }
}
