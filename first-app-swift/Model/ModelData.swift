//
//  ModelData.swift
//  first-app-swift
//
//  Created by Jose Manuel Barba Sánchez on 5/11/21.
//

import Foundation

var scenaries: [Scenary] = load("data.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("No ha sido posible encontrar el archivo \(filename)")
    }
    do {
        data = try Data(contentsOf: file)
        
    } catch {
        fatalError("No es posible cargar el archivo \(filename)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("No se posible parsear \(filename)")
    }
}
