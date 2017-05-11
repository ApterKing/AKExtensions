//
//  String+Extension.swift
//  AKExtensions
//
//  Created by wangcong on 22/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import Foundation
import UIKit

// MARK: Base64
public extension String {
    
    public func base64EncodedString(options: Data.Base64EncodingOptions = []) -> String? {
        let data = self.data(using: .utf8)
        return data?.base64EncodedString(options: options)
    }
    
    public func base64DecodedString(options: Data.Base64DecodingOptions = []) -> String? {
        let base64Data = Data(base64Encoded: self, options: options)
        guard let data = base64Data else {
            return nil
        }
        return String(data: data, encoding: .utf8)
    }
    
}

// MARK: size
public extension String {
    
    public func size(with font: UIFont, toSize: CGSize = CGSize.zero, option: NSStringDrawingOptions = .usesLineFragmentOrigin) -> CGSize {
        let attributes = [NSFontAttributeName: font]
        if __CGSizeEqualToSize(toSize, CGSize.zero) {
            return self.size(attributes:attributes)
        }
        return self.boundingRect(with: toSize, options: option, attributes: attributes, context: nil).size
    }
    
}
