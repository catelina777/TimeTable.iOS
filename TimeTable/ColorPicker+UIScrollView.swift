//
//  ColorPicker+UIScrollView.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/08.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

extension ColorPickerVC: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y

        if offsetY <= 0 {
            topBarV.depthPreset = .none
        } else if 0 < offsetY && offsetY <= 2 {
            topBarV.depthPreset = .depth1
        } else if 2 < offsetY && offsetY <= 4 {
            topBarV.depthPreset = .depth2
        } else if 4 < offsetY && offsetY <= 6 {
            topBarV.depthPreset = .depth3
        } else if 6 < offsetY && offsetY <= 8 {
            topBarV.depthPreset = .depth4
        } else if 10 < offsetY {
            topBarV.depthPreset = .depth5
        }
    }
}
