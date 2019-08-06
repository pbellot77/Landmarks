//
//  PageView.swift
//  Landmarks
//
//  Created by Patrick Bellot on 8/6/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
  var viewControllers: [UIHostingController<Page>]
  
  init(_ views: [Page]) {
    self.viewControllers = views.map { UIHostingController(rootView: $0)}
  }
  
  var body: some View {
    PageViewController(controllers: viewControllers)
  }
}

#if DEBUG
struct PageView_Previews: PreviewProvider {
  static var previews: some View {
    PageView(features.map { FeatureCard(landmark: $0) })
      .aspectRatio(3/2, contentMode: .fit)
  }
}
#endif
