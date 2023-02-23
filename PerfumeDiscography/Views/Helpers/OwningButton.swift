//
//  OwningButton.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import SwiftUI

struct OwningButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Owning", systemImage: isSet ? "p.square.fill" : "p.square")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .teal : .secondary)
                .font(.system(size: 20).weight(.bold))
        }
    }
}

struct OwningButton_Previews: PreviewProvider {
    static var previews: some View {
        OwningButton(isSet: .constant(true))
    }
}
