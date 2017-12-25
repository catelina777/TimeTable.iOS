//
//  MainVCE.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/27.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

extension MainVC {

    func prepareTimetable() {
        guard let timetableVC = R.storyboard.timetableView.instantiateInitialViewController() else { return }
        guard let timetableV = timetableVC.view else { return }
        let timetableVHeight = Screen.height - toolBarV.bounds.height
        timetableV.frame = CGRect(x: 0,
                                  y: toolBarV.bounds.height + 2,
                                  width: Screen.width,
                                  height: timetableVHeight - 2)
        self.view.addSubview(timetableV)
        self.addChildViewController(timetableVC)
    }
}
