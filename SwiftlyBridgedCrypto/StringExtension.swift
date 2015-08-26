//
//  StringExtension.swift
//  SwiftlyBridgedCrypto
//
//  Created by James Carroll on 8/26/15.
//  Copyright © 2015 James Carroll. All rights reserved.
//

import Foundation

// This file holds the extensions to String

extension String: SHADelegate {
  // All methods return an empty string if string encoding failed
  
  func sha1() -> String {
    return self.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)?.sha1() ?? ""
  }
  
  func sha224() -> String {
    return self.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)?.sha224() ?? ""
  }
  
  func sha256() -> String {
    return self.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)?.sha256() ?? ""
  }
  
  func sha384() -> String {
    return self.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)?.sha384() ?? ""
  }
  
  func sha512() -> String {
    return self.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)?.sha512() ?? ""
  }
  
}