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
  
  @discardableResult
  func fetchLatestGenPlatforms() -> Observable<[Platform]>
  
}
