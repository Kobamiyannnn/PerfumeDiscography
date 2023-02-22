//
//  Artwork.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import SwiftUI

struct Artwork: View {
    var body: some View {
        ZStack {
            Image("UPCP-9031")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(8)
        }
    }
}

struct Artwork_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Artwork()
        }
    }
}
