//
//  PlatformServiceType.swift
//  GamerDB
//
//  Created by Francis Breidenbach on 10/10/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import RxSwift
import RxAlamofire
import RealmSwift


protocol PlatformServiceType {
  
  /// Fetch latest generation platforms and save to local Realm database.
  ///
  /// - Returns: Discardable observable array of Platform objects.
  @discardableResult
  func fetchLatestGenPlatforms() -> Observable<[Platform]>
  
  
  /// Retrieve all platforms saved to local Realm database.
  ///
  /// - Returns: Observable Realm results of type Platform.
  func platforms() -> Observable<Results<Platform>>
  
}
