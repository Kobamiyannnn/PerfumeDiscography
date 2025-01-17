//
//  ModelData.swift
//  PerfumeDiscography
//  
//  Created by Kobamiyannnn on 2023/02/23
//  
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var products: [Product] = load("PerfumeDiscographyData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Coulnd't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error.localizedDescription)")
    }
}
