//
//  ColorPickerCell.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/06.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material
import MaterialComponents.MaterialPalettes

final class ColorPickerCell: TableViewCell {

    @IBOutlet weak var colorImageView: UIImageView!
    @IBOutlet weak var checkImageView: UIImageView!
    @IBOutlet weak var colorNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        prepareColorImageView()
        hideCheckImageView()
    }

    fileprivate func prepareColorImageView() {
        colorImageView.image = R.image.ic_fiber_manual_record()?.withRenderingMode(.alwaysTemplate)
    }

    fileprivate func hideCheckImageView() {
        checkImageView.isHidden = true
    }

    func showCheckImageView() {
        checkImageView.isHidden = false
        checkImageView.image = R.image.ic_check()?.withRenderingMode(.alwaysTemplate)
        checkImageView.tintColor = MDCPalette.blue.accent400
    }

    func set(color: UIColor, colorName: String) {
        colorImageView.tintColor = color
        checkImageView.tintColor = color
        colorNameLabel.text = colorName
    }
}
