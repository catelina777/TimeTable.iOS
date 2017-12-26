//
//  TimetableTimeCell.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/21.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

final class TimetableTimeCell: PaperCollectionCell {

    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var startTimeLabel: UILabel!
    @IBOutlet weak var endTimeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func prepareUI() {
        prepareDepth(preset: .none)
        prepareLabel()
    }

    func prepareDepth(preset: DepthPreset) {
        paperV.depthPreset = preset
    }

    func prepareLabel() {
        periodLabel.text = "5"
        startTimeLabel.text = "09:00"
        endTimeLabel.text = "10:40"
    }
}
