//
//  Utility.swift
//  DTH Service App
//
//  Created by yesdgq on 2020/2/21.
//  Copyright © 2020 yesdgq. All rights reserved.
//

import Foundation
import UIKit

/**
 机型的屏幕大小
 */
public let Device_Is_iPhoneX=__CGSizeEqualToSize(CGSize.init(width: 1125/3, height: 2436/3), UIScreen.main.bounds.size)

public let Device_Is_iPhoneXr=__CGSizeEqualToSize(CGSize.init(width: 828/2, height: 1792/2), UIScreen.main.bounds.size)

public let Device_Is_iPhoneXs=__CGSizeEqualToSize(CGSize.init(width: 1125/3, height: 2436/3), UIScreen.main.bounds.size)

public let Device_Is_iPhoneXs_Max=__CGSizeEqualToSize(CGSize.init(width: 1242/3, height: 2688/3), UIScreen.main.bounds.size)

public let Device_Is_iPhone12=__CGSizeEqualToSize(CGSize.init(width: 1170/3, height: 2532/3), UIScreen.main.bounds.size)

//let isIphoneX = (Device_Is_iPhoneX || Device_Is_iPhoneXr || Device_Is_iPhoneXs||Device_Is_iPhoneXs_Max||Device_Is_iPhone12)

public var isIphoneX: Bool {
    if UIDevice.current.userInterfaceIdiom == .pad {
        return false
    }
    if UIApplication.shared.keyWindow?.safeAreaInsets.top != 20 {
        return true
    }
    return false
}

/**
 状态栏高度
 */
public let STATEBAR_HEIGHT = UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 20

//UIApplication.shared.statusBarFrame.height
/**
 顶部状态栏+导航高度
 */
public let TOPSPACE_HEIGHT = ((UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 20) + 44)
/**
 底部安全区域的高度
 */
public let BOTTOMSAFESPACE_HEIGHT = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
/**
 导航栏高度
 */
public let NAVIGATIONBAR_HEIGHT = ((UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 20) + 44)

public let TOOLBAR_HEIGTH: CGFloat = 44
/**
 屏幕宽度
 */
public let SCREEN_WIDTH = UIScreen.main.bounds.size.width
/**
 屏幕高度
 */
public let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

public let STATUSBAR_HEIGH =  UIApplication.shared.statusBarFrame.size.height
public func RGB_COLOR(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {return UIColor(red: r, green: g, blue: b, alpha: 1.0)}



