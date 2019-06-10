//
//  Landmark.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/6/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
	var id: Int
	var name: String
	fileprivate var imageName: String
	fileprivate var coordinates: Coordinates
	var state: String
	var park: String
	var category: Category
	
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: coordinates.latitued, longitude: coordinates.longitude)
	}
	
	func image(forSize size: Int) -> Image {
		ImageStore.shared.image(name: imageName, size: size)
	}
	
	enum Category: String, CaseIterable, Codable, Hashable {
		case featured = "Featured"
		case lakes = "Lakes"
		case river = "Rivers"
	}
}

struct Coordinates: Hashable, Codable {
	var latitued: Double
	var longitude: Double
}
