//
//  NSObjectExtension.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/05/09.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import Foundation

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
