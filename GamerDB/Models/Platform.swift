//
//  Platform.swift
//  GamerDB
//
//  Created by Francis Breidenbach on 10/10/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import RealmSwift
import SwiftyJSON


class Platform: Object {
  
  // MARK: - Properties
  
  @objc dynamic var id = 0
  @objc dynamic var name = ""
  @objc dynamic var logoUrl = ""
  
  
  // MARK: - Init
  
  convenience init(json: JSON) {
    self.init()
    
    id = json["id"].intValue
    name = json["name"].stringValue
    logoUrl = json["logo"]["url"].stringValue
  }
  
  
  // MARK: - Realm Override
  
  override static func primaryKey() -> String? {
    return "id"
  }
  
  
}
