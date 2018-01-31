//
//  ColorPickerVCE.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/06.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialPalettes

extension ColorPickerVC {

    func prepareTableView() {
        colorPickerTableV.delegate = self
        colorPickerTableV.dataSource = self
        colorPickerTableV.register(cellType: ColorPickerCell.self)
        colorPickerTableV.rowHeight = 56
    }

    func prepareTopBar() {
        topBarV.depthPreset = .none
        topBarV.backgroundColor = MDCPalette.deepOrange.accent400
        backButton.image = R.image.ic_keyboard_arrow_left()?.withRenderingMode(.alwaysTemplate)
        backButton.tintColor = .white
    }
}
