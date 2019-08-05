//
//  UserData.swift
//  Landmarks
//
//  Created by Patrick Bellot on 6/21/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
  @Published var showFavoritesOnly = false
  @Published var landmarks = landmarkData
}
