//
//  TimetableVCE.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/21.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit

extension TimetableVC {

    func prepareCollectionViews() {
        timeTableCollectionV.delegate = self
        timeTableCollectionV.dataSource = self
        timeTableCollectionV.register(cellType: TimetableContentCell.self)

        timeTableColumnHeaderCollectionV.delegate = self
        timeTableColumnHeaderCollectionV.dataSource = self
        timeTableColumnHeaderCollectionV.register(cellType: TimetableWeekDayCell.self)

        timeTableRowHeaderCollectionV.delegate = self
        timeTableRowHeaderCollectionV.dataSource = self
        timeTableRowHeaderCollectionV.register(cellType: TimetableTimeCell.self)
    }
}
