//
//  UIScreen+Extension.swift
//  AKExtensions
//
//  Created by wangcong on 22/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import UIKit

public extension UIScreen {
    
    public class var size: CGSize {
        return UIScreen.main.bounds.size
    }
    
    public class var width: CGFloat {
        return size.width
    }
    
    public class var height: CGFloat {
        return size.height
    }
    
}
