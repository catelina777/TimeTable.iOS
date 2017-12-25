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
        colorPickerTableView.delegate = self
        colorPickerTableView.dataSource = self
        colorPickerTableView.register(cellType: ColorPickerCell.self)
        colorPickerTableView.rowHeight = 56
    }

    func prepareTopBar() {
        topBarView.depthPreset = .none
        topBarView.backgroundColor = MDCPalette.deepOrange.accent400
        backButton.image = R.image.ic_keyboard_arrow_left()?.withRenderingMode(.alwaysTemplate)
        backButton.tintColor = .white
    }
}
