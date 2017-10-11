//
//  RequestRouter.swift
//  GamerDB
//
//  Created by Francis Breidenbach on 10/10/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import Alamofire


extension RequestRouter {
  
  enum Platform: URLRequestConvertible, Router {
    
    case getLatestPlatforms
    
    
    var httpMethod: HTTPMethod {
      return .get
    }
    
    var path: String {
      return "/platforms/"
    }
    
    var parameters: Parameters? {
      switch self {
      case .getLatestPlatforms:
        return [
          "fields": "name,generation",
          "filter[generation][eq]": 8
        ]
      }
      
    }
    
    var headers: HTTPHeaders {
      return [
        "Accept": "application/json",
        "user-key": "a25d4a382a82e277e5de82b2fbadc6a0"
      ]
    }
    
    
    func asURLRequest() throws -> URLRequest {
      
      let endpoint = baseUrl.appendingPathComponent(path)
      var request = URLRequest(url: endpoint)
      
      request.httpMethod = httpMethod.rawValue
      
      let encoding = URLEncoding.default
      
      guard let fullRequest = try? encoding.encode(request, with: parameters) else {
        throw RequestRouter.RouterError.requestEncodingError
      }
      
      return fullRequest
      
    }
    
  }
}
