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
	let didChange = PassthroughSubject<UserData, Never>()
	
	var showFavoritesOnly = false {
		didSet {
			didChange.send(self)
		}
	}
	var landmarks = landmarkData {
		didSet {
			didChange.send(self)
		}
	}
}
