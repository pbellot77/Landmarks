//
//  ContentView.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/4/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
	var landmark: Landmark
	
    var body: some View {
			VStack {
				MapView(coordinate: landmark.locationCoordinate)
					.frame(height: 300)
				CircleImage(image: landmark.image(forSize: 250))
					.offset(y: -130)
					.padding(.bottom, -130)
				VStack(alignment: .leading){
					Text(landmark.name)
						.font(.title)
					HStack(alignment: .top) {
						Text(landmark.park)
							.font(.subheadline)
						Spacer()
						Text(landmark.state)
							.font(.subheadline)
					}
				}
				.padding()
				
				Spacer()
			}
				.navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
