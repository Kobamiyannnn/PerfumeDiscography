//
//  Background.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/27
//  
//

import SwiftUI

struct Background: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
