//
//  Date+Extension.swift
//  AKExtensions
//
//  Created by wangcong on 23/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import Foundation

// MARK: String - Date
public extension Date {
    
    public init?(from date: String, format: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        guard let date = formatter.date(from: date) else {
            return nil
        }
        self.init(timeInterval:0, since: date)
    }
    
    public func format(to format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
}
