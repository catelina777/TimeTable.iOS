//
//  TimetableVC.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/20.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

final class TimetableVC: BaseVC {

    @IBOutlet var timeTableCollectionV: UICollectionView!
    @IBOutlet var timeTableColumnHeaderCollectionV: UICollectionView!
    @IBOutlet var timeTableRowHeaderCollectionV: UICollectionView!

    var numberOfTimetable = 6
    var numberOfWeekDay = 6

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareCollectionViews()
    }

    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .default
    }
}
