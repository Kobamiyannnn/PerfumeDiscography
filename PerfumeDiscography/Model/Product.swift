//
//  Product.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import Foundation
import SwiftUI

struct Product: Hashable, Codable, Identifiable {
    var name: String
    var releaseDate: String
    var recordLabel: String
    var id: String
    var edition: String
    var price: Int
    var contents: Contents
    var description: String
    var ownsThis: Bool

    var artwork: Image {
        Image(id)
    }

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case single = "Single"
        case album = "Album"
        case ep = "EP"
    }

    struct Contents: Codable, Hashable {
        var CD: [String]
        var bonusDisc: [String]?
    }
}
