//
//  Array+Foundation.swift
//  CryptoSwift
//
//  Created by Marcin Krzyzanowski on 27/09/15.
//  Copyright © 2015 Marcin Krzyzanowski. All rights reserved.
//

import Foundation

extension _UInt8Type {
    private static func Zero() -> Self {
        return (0 as UInt8) as! Self
    }
}

extension Array where Element: _UInt8Type {
    public init(_ data: NSData) {
        self = Array<Element>(count: data.length, repeatedValue: Element.Zero())
        data.getBytes(&self, length: self.count)
    }
}