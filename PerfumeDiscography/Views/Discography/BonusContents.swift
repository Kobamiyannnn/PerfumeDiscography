//
//  BonusContents.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import SwiftUI

struct BonusContents: View {
    var product: Product

    var body: some View {
        if let bonusDisc =  product.contents.bonusDisc {
            Divider()
                .padding(.leading)
            Text("Bonus Disc")
                .font(.title2)
                .fontWeight(.semibold)

            VStack {
                ForEach(bonusDisc, id: \.self) { content in
                    Spacer()
                    HStack {
                        Text(content)
                            .padding(.leading)
                        Spacer()
                    }
                    .lineLimit(2)
                    .minimumScaleFactor(0.9)
                }
                Spacer()
            }
        }
    }
}

struct BonusContents_Previews: PreviewProvider {
    static var previews: some View {
        BonusContents(product: ModelData().products[4])
    }
}
