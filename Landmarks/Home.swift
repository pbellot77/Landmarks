//
//  Home.swift
//  Landmarks
//
//  Created by Patrick Bellot on 7/8/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct CategoryHome : View {
	var categories: [String: [Landmark]] {
		.init(
			grouping: landmarkData,
			by: { $0.category.rawValue }
		)
	}
	
	var featured: [Landmark] {
		landmarkData.filter { $0.isFeatured }
	}
	
	var body: some View {
		NavigationView {
			List {
				FeaturedLandmarks(landmarks: featured)
					.scaledToFit()
					.frame(height: 200)
					.clipped()
					.listRowInsets(EdgeInsets())
				ForEach(categories.keys.sorted()	.identified(by: \.self)) { key in
					CategoryRow(categoryName: key, items: self.categories[key]!)
				}
				.listRowInsets(EdgeInsets())
				
				NavigationLink(destination: LandmarkList()) {
					Text("See All")
				}
			}
			.navigationBarTitle(Text("Featured"))
			.navigationBarItems(trailing:
				PresentationLink(destination: Text("User Profile")) {
					Image(systemName: "person.crop.circle")
						.imageScale(.large)
						.accessibility(label: Text("User Profile"))
						.padding()
				}
			)
		}
	}
}

struct FeaturedLandmarks: View {
	var landmarks: [Landmark]
	var body: some View {
		landmarks[0].image(forSize: 250).resizable()
	}
}

#if DEBUG
struct Home_Previews : PreviewProvider {
	static var previews: some View {
		CategoryHome()
	}
}
#endif
