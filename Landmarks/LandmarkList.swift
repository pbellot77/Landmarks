//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/15/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
	var body: some View {
		NavigationView {
			List(landmarkData) { landmark in
				NavigationButton(destination: LandmarkDetail(landmark: landmark)){
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationBarTitle(Text("Landmarks"), displayMode: .large)
		}
	}
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
