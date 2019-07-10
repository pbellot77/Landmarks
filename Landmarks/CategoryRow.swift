//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Patrick Bellot on 7/8/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct CategoryRow : View {
	var categoryName: String
	var items: [Landmark]
	
	var body: some View {
		VStack(alignment: .leading) {
			Text(self.categoryName)
				.font(.headline)
				.padding(.leading, 15)
				.padding(.top, 5)
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(alignment: .top, spacing: 0) {
					ForEach(self.items) { landmark in
						Text(landmark.name)
					}
				}
			}
			.frame(height: 185)
		}
	}
}

#if DEBUG
struct CategoryRow_Previews : PreviewProvider {
	static var previews: some View {
		CategoryRow(
			categoryName: landmarkData[0].category.rawValue, items: Array(landmarkData.prefix(4))
		)
	}
}
#endif
