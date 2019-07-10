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
	
	var body: some View {
		NavigationView {
			List {
				ForEach(categories.keys.sorted().identified(by: \.self)) { key in
						CategoryRow(categoryName: key, items: self.categories[key]!)
					}
			}
			.navigationBarTitle(Text("Featured"))
		}
	}
}

#if DEBUG
struct Home_Previews : PreviewProvider {
	static var previews: some View {
		CategoryHome()
	}
}
#endif
