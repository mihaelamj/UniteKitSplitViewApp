//
//  DataItem.swift
//  AllApplesSV
//
//  Created by Mihaela Mihaljevic Jakic on 07.05.2021..
//

import Foundation
import UniteKit

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif

open class DataItem {
  
  // MARK: -
  // MARK: Data Properties -
  
  var name: String
  var isChecked: Bool
  var color: UKColor
  
  class var none: DataItem {
    return DataItem(name: "none", isChecked: false, color: UKColor.systemGray)
  }
  
  class var some: [DataItem] {
    return [
      DataItem(name: "Item 1", isChecked: false, color: UKColor.systemBlue),
      DataItem(name: "Item 2", isChecked: true, color: UKColor.systemPink),
      DataItem(name: "Item 3", isChecked: false, color: UKColor.systemGreen),
      DataItem(name: "Item 4", isChecked: true, color: UKColor.systemRed),
      DataItem(name: "Item 5", isChecked: false, color: UKColor.systemOrange)
    ]
  }
  
  // MARK: -
  // MARK: Init -
  
  internal init(name: String, isChecked: Bool, color: UKColor) {
    self.name = name
    self.isChecked = isChecked
    self.color = color
  }
}

// MARK: -
// MARK: Description -

extension DataItem: CustomStringConvertible {
  public var description: String {
    let checked = isChecked ? " ✅" : ""
    return "\(name)\(checked)"
  }
}

