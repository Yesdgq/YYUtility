//
//  UIImageView+CornerImage.swift
//  SmartInHome
//
//  Created by yesdgq on 2020/4/28.
//  Copyright © 2020 yesdgq. All rights reserved.
//

import Foundation

extension UIImageView {
    public func setCornerImage() {
        let queue = DispatchQueue(label: "imageMakeQueue",attributes: .concurrent) //并行队列
        queue.async {
            /// 1.建立上下文
            UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, 0)
            /// 设置填充颜色
            UIColor.white.setFill()
            UIRectFill(self.bounds)
            /// 2.创建椭圆path,宽、高一致返回的就是圆形路径
            let path = UIBezierPath(ovalIn: self.bounds)
            /// 裁切
            path.addClip()
            /// 3.绘制图像
            self.image?.draw(in: self.bounds)
            /// 4.获取绘制的图像
            let image = UIGraphicsGetImageFromCurrentImageContext()
            /// 5关闭上下文
            UIGraphicsEndImageContext()
            
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    public func cornerImage(with radius: CGFloat) {
        let queue = DispatchQueue(label: "imageMakeQueue",attributes: .concurrent) //并行队列
        queue.async {
            /// 1.建立上下文
            UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 1)
            /// 设置填充颜色
            //UIColor.white.setFill()
            //UIRectFill(self.bounds)
            /// 2.创建椭圆path,宽、高一致返回的就是圆形路径
            let path = UIBezierPath(roundedRect: self.bounds, cornerRadius: radius)
            /// 裁切
            path.addClip()
            /// 3.绘制图像
            self.image?.draw(in: self.bounds)
            /// 4.获取绘制的图像
            let image = UIGraphicsGetImageFromCurrentImageContext()
            /// 5关闭上下文
            UIGraphicsEndImageContext()
            
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
