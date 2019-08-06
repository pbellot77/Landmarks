//
//  PageViewController.swift
//  Landmarks
//
//  Created by Patrick Bellot on 8/6/19.
//  Copyright © 2019 TwoTwenty8 LLC. All rights reserved.
//

import UIKit
import SwiftUI

struct PageViewController: UIViewControllerRepresentable {
  
  var controllers: [UIViewController]
  
  func makeUIViewController(context: Context) -> UIPageViewController {
    let pageViewController = UIPageViewController( transitionStyle: .scroll, navigationOrientation: .horizontal)
    
    return pageViewController
  }
  
  func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
    pageViewController.setViewControllers([controllers[0]], direction: .forward, animated: true)
  }
}

