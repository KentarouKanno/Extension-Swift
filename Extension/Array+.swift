//
//  Array+.swift
//  Extension
//
//  Created by KentarOu on 2016/09/01.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    
    /// [Array+] 引数のElementを削除する、成功失敗をBoolで返す
    mutating func e_remove(element element: Element) -> Bool {
        guard let index = indexOf(element) else { return false }
        removeAtIndex(index)
        return true
    }
    
    /// [Array+] 引数のElementsを配列から削除する
    mutating func e_remove(elements elements: [Element]) {
        for element in elements {
            e_remove(element: element)
        }
    }
}