//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/26/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol : View {
	let angle: Angle
	
	var body: some View {
		BadgeSymbol()
			.padding(-60)
			.rotationEffect(angle, anchor: .bottom)
	}
}

#if DEBUG
struct RotatedBadgeSymbol_Previews : PreviewProvider {
	static var previews: some View {
		RotatedBadgeSymbol(angle: .init(degrees: 5))
	}
}
#endif
