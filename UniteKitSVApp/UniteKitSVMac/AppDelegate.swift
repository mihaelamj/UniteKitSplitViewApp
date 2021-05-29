//
//  AppDelegate.swift
//  UniteKitSVMac
//
//  Created by Mihaela Mihaljevic Jakic on 29.05.2021..
//

import Cocoa
import UniteKit

class AppDelegate: NSObject, NSApplicationDelegate {
  private var window: NSWindow?
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    window = AppSceneDelegate.makeWindow_Mac(theVC: MainSplitViewController())
  }
}

