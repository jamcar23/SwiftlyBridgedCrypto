//
//  CryptoDelegate.swift
//  SwiftlyBridgedCrypto
//
//  Created by James Carroll on 8/26/15.
//  Copyright © 2015 James Carroll. All rights reserved.
//

import Foundation

// Common protocol for code share across all crypto functionality

public protocol SBCrypto {
  func bytesToHexString(hex: [UInt8]) -> String
}

// MARK: - Default Implementation

public extension SBCrypto {
  public func bytesToHexString(bytes: [UInt8]) -> String {
    return bytes.map({String(format: "%02hhx", $0)}).joinWithSeparator("")
  }
}