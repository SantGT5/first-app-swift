//
//  Scenery.swift
//  first-app-swift
//
//  Created by Jose Manuel Barba Sánchez on 5/11/21.
//

import Foundation
import SwiftUI
import CoreLocation


struct Scenary: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var category: Category
    var isFeatured: Bool
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lagos"
        case rivers = "Rios"
        case mountains = "Montañas"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature"): nil
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
