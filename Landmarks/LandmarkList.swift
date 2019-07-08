//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/15/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
	@EnvironmentObject var userData: UserData
	
	var body: some View {
		NavigationView {
			List {
				Toggle(isOn: $userData.showFavoritesOnly){
					Text("Show Favorites Only")
				}
				
				ForEach(userData.landmarks) { landmark in
					if !self.userData.showFavoritesOnly || landmark.isFavorite {
						NavigationLink(destination: LandmarkDetail(landmark: landmark)){
							LandmarkRow(landmark: landmark)
						}
					}
				}
			}
				.navigationBarTitle(Text("Landmarks"), displayMode: .large)
		}
	}
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
	static var previews: some View {
		ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
				LandmarkList()
					.previewDevice(PreviewDevice(rawValue: deviceName))
					.previewDisplayName(deviceName)
		}
		.environmentObject(UserData())
	}
}
#endif
