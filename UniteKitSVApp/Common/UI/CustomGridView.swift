//
//  CustomGridView.swift
//  UniteKitSVApp
//
//  Created by Mihaela Mihaljevic Jakic on 29.05.2021..
//

import Foundation
import UniteKit
import GridView

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif

open class CustomGrid: BaseView {
  
  // MARK: -
  // MARK: Properties -
  
  private(set) public lazy var gridView: CenteredGridView = {
    let gv = CenteredGridView()
    return gv
  }()
  
  // MARK: -
  // MARK: Template Overrides -
  
  override public func customInit() {
    super.customInit()
    forcedLayer.borderWidth = 20.0
    forcedLayer.borderColor = UKColor.systemGray.cgColor
    forcedLayer.cornerRadius = 20.0
  }
  
}
