//
//  Badge.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/24/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct Badge : View {
	var body: some View {
		BadgeBackground()
	}
}

#if DEBUG
struct Badge_Previews : PreviewProvider {
	static var previews: some View {
		Badge()
	}
}
#endif
