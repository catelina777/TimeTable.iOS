//
//  BaseVCE.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/03.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialPalettes

extension BaseVC {

    func prepareButtonColor() {
        buttonColor = MDCPalette.grey.tint600
    }

    func prepareFontColor() {
        primaryFontColor = MDCPalette.grey.tint900
        secondFontColor = MDCPalette.grey.tint500
    }

    func prepareThemeColor() {
        themeColor = MDCPalette.deepOrange.accent400
    }
}
