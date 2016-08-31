//
//  UIViewController+.swift
//  Extension
//
//  Created by KentarOu on 2016/09/01.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /// [UIViewController+] 画面のスクリーンショットを取る
    func e_screenshotFromWindow(scale: CGFloat = 0.0) -> UIImage? {
        guard let window = UIApplication.sharedApplication().windows.first else {
            return nil
        }
        UIGraphicsBeginImageContextWithOptions(window.frame.size, false, scale)
        window.drawViewHierarchyInRect(window.bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
