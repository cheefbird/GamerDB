//
//  Router.swift
//  GamerDB
//
//  Created by Francis Breidenbach on 10/10/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import Alamofire


protocol Router {
  
  var httpMethod: HTTPMethod { get }
  
  var path: String { get }
  
  var parameters: Parameters? { get }
  
  var headers: HTTPHeaders { get }
  
}

extension Router {
  var baseUrl: URL {
    return URL(string: "https://api-2445582011268.apicast.io")!
  }
}


enum RequestRouter {
  
}
