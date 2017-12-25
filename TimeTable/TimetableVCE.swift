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
        timeTableCollectionView.delegate = self
        timeTableCollectionView.dataSource = self
        timeTableCollectionView.register(cellType: TimetableContentCell.self)

        timeTableColumnHeaderCollectionView.delegate = self
        timeTableColumnHeaderCollectionView.dataSource = self
        timeTableColumnHeaderCollectionView.register(cellType: TimetableWeekDayCell.self)

        timeTableRowHeaderCollectionView.delegate = self
        timeTableRowHeaderCollectionView.dataSource = self
        timeTableRowHeaderCollectionView.register(cellType: TimetableTimeCell.self)
    }
}
