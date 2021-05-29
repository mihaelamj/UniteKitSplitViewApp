//
//  SceneDelegate.swift
//  UniteKitSVMobile
//
//  Created by Mihaela Mihaljevic Jakic on 29.05.2021..
//

import UIKit
import UniteKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let aScene = (scene as? UIWindowScene) else { return }
    window = AppSceneDelegate.makeWindow_iOS(theScene: aScene, theVC: MainSplitViewController())
  }
}

