//
//  TimetableContentCell.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/21.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

class TimetableContentCell: PaperCollectionCell {

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var classroomNumber: UILabel!
    @IBOutlet weak var teacherName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func prepareUI() {
        prepareDepth(preset: .depth2)
        prepareLabel()
    }

    func prepareDepth(preset: DepthPreset) {
        paperView.depthPreset = preset
    }

    func prepareLabel() {
        subjectLabel.set(text: "English 1A",
                         lineSpacing: 8,
                         minSpacing: 4)
        classroomNumber.text = "406"
        teacherName.text = "エルウッド ジム"
    }
}
