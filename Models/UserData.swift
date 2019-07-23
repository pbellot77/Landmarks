//
//  UserData.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/21/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
	let willChange = PassthroughSubject<UserData, Never>()
	
	var showFavoritesOnly = false {
		didSet {
			willChange.send(self)
		}
	}
	var landmarks = landmarkData {
		didSet {
			willChange.send(self)
		}
	}
}
