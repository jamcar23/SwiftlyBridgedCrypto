//
//  NSDataExtension.swift
//  SwiftlyBridgedCrypto
//
//  Created by James Carroll on 8/26/15.
//  Copyright © 2015 James Carroll. All rights reserved.
//

import Foundation
import CommonCrypto

// This file holds the extension to NSData

extension NSData: SHADelegate {
  public func sha1() -> String {
    var digest = [UInt8](count: Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
    CC_SHA1(self.bytes, CC_LONG(self.length), &digest)
    
    return self.hexToString(digest)
  }
  
  public func sha224() -> String {
    var digest = [UInt8](count: Int(CC_SHA224_DIGEST_LENGTH), repeatedValue: 0)
    CC_SHA224(self.bytes, CC_LONG(self.length), &digest)
    
    return self.hexToString(digest)
  }
  
  public func sha256() -> String {
    var digest = [UInt8](count: Int(CC_SHA256_DIGEST_LENGTH), repeatedValue: 0)
    CC_SHA256(self.bytes, CC_LONG(self.length), &digest)
    
    return self.hexToString(digest)
  }
  
  public func sha384() -> String {
    var digest = [UInt8](count: Int(CC_SHA384_DIGEST_LENGTH), repeatedValue: 0)
    CC_SHA384(self.bytes, CC_LONG(self.length), &digest)
    
    return self.hexToString(digest)
  }
  
  public func sha512() -> String {
    var digest = [UInt8](count: Int(CC_SHA512_DIGEST_LENGTH), repeatedValue: 0)
    CC_SHA512(self.bytes, CC_LONG(self.length), &digest)
    
    return self.hexToString(digest)
  }
}