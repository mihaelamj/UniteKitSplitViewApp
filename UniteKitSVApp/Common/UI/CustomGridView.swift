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

open class CustomGridView: BaseView {
  
  // MARK: -
  // MARK: Properties -
  
  private(set) public lazy var gridView: CenteredGridView = {
    let gv = CenteredGridView()
    return gv
  }()
  
  override open var viewOptions: UKViewOptions {
    return .default
  }
  
  // MARK: -
  // MARK: Template Overrides -
  
  override public func customInit() {
    super.customInit()
    // TODO: refactor This -
    #if os(OSX)
//    self.layer?.delegate = self
    // will call `layoutSubviews` on `macOS`
//    needsLayout = true
    #endif
    
    debugLayerInfo()
  }
  
}
