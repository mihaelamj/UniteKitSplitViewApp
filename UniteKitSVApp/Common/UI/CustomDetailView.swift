//
//  CustomDetailView.swift
//  AllApplesSV
//
//  Created by Mihaela Mihaljevic Jakic on 24.05.2021..
//

import Foundation
import UniteKit

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif

open class CustomDetailView: BaseView {
  
  // MARK: -
  // MARK: Template Overrides -
  
  override public func customInit() {
    super.customInit()
    forcedLayer.borderWidth = 20.0
    forcedLayer.borderColor = UKColor.systemGray.cgColor
    forcedLayer.cornerRadius = 20.0
  }
  
}
