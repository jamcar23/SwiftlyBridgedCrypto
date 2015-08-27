//
//  SHA2Delegate.swift
//  SwiftlyBridgedCrypto
//
//  Created by James Carroll on 8/26/15.
//  Copyright © 2015 James Carroll. All rights reserved.
//

import Foundation
import CommonCrypto

public protocol SHADelegate: Crypto {
  func sha1() -> String
  func sha224() -> String
  func sha256() -> String 
  func sha384() -> String
  func sha512() -> String
}