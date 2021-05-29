//
//  Registrant.swift
//  AllApplesSV
//
//  Created by Mihaela Mihaljevic Jakic on 26.05.2021..
//

import Foundation
import UniteKit
import MMJSectionedDataSource
import CollectionUtil
import UniteKitTableViewHandlers

open class MyAllStuffHandler {
  
  let repo = Repository()
  let registrant = UKTableViewRegistrant(tableCellHandler:TableViewCellHandler())
  let tvDataSource: UKTableViewDataSourceClass
  let tvDelegate: UKTableViewDelegateClass
  
  init(itemDelegate: UKTableViewItemDelegate? = nil) {
    tvDataSource = UKTableViewDataSourceClass(sectionHandlerImplementation: repo,
                                                registrant: registrant)
    tvDelegate = UKTableViewDelegateClass(itemDelegateImplementation: itemDelegate,
                                            sectionHandlerImplementation: repo,
                                            registrant: registrant)
  }

}
