//
//  Artwork.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import SwiftUI

struct Artwork: View {
    var product: Product

    var body: some View {
        ZStack {
            product.artwork
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .shadow(radius: 7)
        }
    }
}

struct Artwork_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Artwork(product: products[0])
        }
    }
}
