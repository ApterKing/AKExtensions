//
//  Array+Extension.swift
//  AKExtensions
//
//  Created by wangcong on 23/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import Foundation

// MARK: subscript safe
public extension Array {
    
    public subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
}

// MARK: delete
public extension Array where Element: Equatable {
    
    public mutating func remove(element: Iterator.Element) -> Bool {
        if let index = self.index(of: element) {
            self.remove(at: index)
            return true
        }
        return false
    }
    
}
