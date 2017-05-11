//
//  NSObject+Extension.swift
//  AKExtensions
//
//  Created by wangcong on 23/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import Foundation

public extension NSObject {
    
    public var className: String {
        return type(of: self).className
    }
    
    public static var className: String {
        return stringFromClass(aClass: self)
    }
    
}

func stringFromClass(aClass: AnyClass) -> String {
    return NSStringFromClass(aClass).components(separatedBy: ".").last!
}
