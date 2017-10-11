//
//  ViewModelType.swift
//  GamerDB
//
//  Created by Francis Breidenbach on 10/10/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation


protocol ViewModelType {
  
  associatedtype Input
  associatedtype Output
  
  
  func transform(input: Input) -> Output
  
}
