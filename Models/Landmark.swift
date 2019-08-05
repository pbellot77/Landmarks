//
//  Landmark.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/6/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
	var id: Int
	var name: String
	fileprivate var imageName: String
	fileprivate var coordinates: Coordinates
	var state: String
	var park: String
	var category: Category
	var isFavorite: Bool
	var isFeatured: Bool
	
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
	}
	
    var featuredImage: Image? {
        guard isFeatured else { return nil }
        
        return Image(
            ImageStore.loadImage(name: "\(imageName)_feature"),
            scale: 2,
            label: Text(verbatim: name))
	}
	
	enum Category: String, CaseIterable, Codable, Hashable {
		case featured = "Featured"
		case lakes = "Lakes"
		case river = "Rivers"
		case mountains = "Mountains"
	}
}

extension Landmark {
  var image: Image {
    ImageStore.shared.image(name: imageName)
  }
}

struct Coordinates: Hashable, Codable {
	var latitude: Double
	var longitude: Double
}
