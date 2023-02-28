//
//  ContentView.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/22
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProductList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
