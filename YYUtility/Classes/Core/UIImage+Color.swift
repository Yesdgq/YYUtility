//
//  UIImage+Color.swift
//  SmartInHome
//
//  Created by yesdgq on 2020/4/28.
//  Copyright © 2020 yesdgq. All rights reserved.
//

import Foundation

extension UIImage {
    public static func image(withColor color: UIColor, size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(CGSize(width: size.width, height: size.height), true, 0)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        
        context.scaleBy(x: 1.0, y: -1.0)
        context.translateBy(x: 0.0, y: -size.height)
        // context.setBlendMode(.multiply)
        
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image?.withRenderingMode(.alwaysOriginal)
    }
}
