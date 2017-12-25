//
//  TextFieldExtension.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/05/22.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

extension TextField {

    func set(defaultColor: UIColor, activeColor: UIColor) {
        placeholderNormalColor = defaultColor
        dividerNormalColor     = defaultColor
        placeholderActiveColor = activeColor
        dividerActiveColor     = activeColor
    }
}
