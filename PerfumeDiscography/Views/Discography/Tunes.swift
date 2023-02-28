//
//  Tunes.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import SwiftUI

struct Tunes: View {
    var product: Product

    var body: some View {
        VStack {
            ForEach(product.contents.CD, id: \.self) { tune in
                Spacer()
                HStack {
                    Text(tune)
                        .padding(.leading)
                    Spacer()
                }
                .lineLimit(1)
                .minimumScaleFactor(0.8)
            }
            Spacer()
        }
    }
}

struct Tunes_Previews: PreviewProvider {
    static var previews: some View {
        Tunes(product: ModelData().products[0])
    }
}
