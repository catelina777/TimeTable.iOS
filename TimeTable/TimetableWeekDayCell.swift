//
//  TimetableWeekDayCell.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/21.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

final class TimetableWeekDayCell: PaperCollectionCell {

    @IBOutlet weak var weekDayLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func prepareUI() {
        prepareDepth(preset: .depth2)
        prepareLabel()
    }

    func prepareDepth(preset: DepthPreset) {
        paperV.depthPreset = preset
    }

    func prepareLabel() {
        weekDayLabel.text = "S"
    }
}
