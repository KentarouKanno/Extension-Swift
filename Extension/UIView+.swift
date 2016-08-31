//
//  UIView+.swift
//  Extension
//
//  Created by KentarOu on 2016/09/01.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

extension UIView {
    
    /// [UIView+] 自身のSubViewを全て取り除く
    func e_removeAllSubviews() {
        for subview in self.subviews {
            subview.removeFromSuperview()
        }
    }
    
    /// [UIView+] UIViewのスクリーンショットを取る
    func e_screenshotImage(scale: CGFloat = 0.0) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, scale)
        drawViewHierarchyInRect(bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
