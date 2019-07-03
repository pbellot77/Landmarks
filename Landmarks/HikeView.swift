//
//  HikeView.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/30/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct HikeView : View {
	var hike: Hike
	@State private var showDetail = false
	
	var body: some View {
		VStack {
			HStack {
				HikeGraph(hike: hike, path: \.elevation)
					.frame(width: 50, height: 30)
					.animation(nil)
				
				VStack(alignment: .leading) {
					Text(verbatim: hike.name)
						.font(.headline)
					Text(verbatim: hike.distanceText)
				}
				
				Spacer()
				
				Button(action: {
					self.showDetail.toggle()
				}) {
					Image(systemName: "cheveron.right.circle")
						.imageScale(.large)
						.rotationEffect(
							.degrees(showDetail ? 90 : 0))
						.padding()
				}
			}
			if showDetail {
				HikeDetail(hike: hike)
			}
		}
	}
}

#if DEBUG
struct HikeView_Previews : PreviewProvider {
	static var previews: some View {
		VStack {
			HikeView(hike: hikeData[0])
				.padding()
			Spacer()
		}
	}
}
#endif
