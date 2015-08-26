//
//  CryptoDelegate.swift
//  SwiftlyBridgedCrypto
//
//  Created by James Carroll on 8/26/15.
//  Copyright © 2015 James Carroll. All rights reserved.
//

import Foundation

// Common protocol for code share across all crypto functionality

protocol Crypto {
  func hexToString(hex: [UInt8]) -> String
}

// MARK: - Default Implementation

extension Crypto {
  func hexToString(hex: [UInt8]) -> String {
    return "".join(hex.map({ String(format: "%02hhx", $0)}))
  }
}