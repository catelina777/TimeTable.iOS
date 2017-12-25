//
//  TimeTable+UICollectionViewDatasource.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/23.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

extension TimetableVC: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {

        switch collectionView.tag {
        case 0:
            return numberOfWeekDay
        case 1:
            return numberOfTimetable
        default:
            return numberOfTimetable * numberOfWeekDay
        }
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        switch collectionView.tag {
        case 0:
            let cell = collectionView.dequeueReusableCell(with: TimetableWeekDayCell.self,
                                                          for: indexPath)
            cell.prepareUI()
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(with: TimetableTimeCell.self,
                                                          for: indexPath)
            cell.prepareUI()
            cell.periodLabel.text = String(indexPath.row + 1)
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(with: TimetableContentCell.self,
                                                          for: indexPath)
            cell.prepareUI()
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        if collectionView.tag == 2 {
            let rootVC = R.storyboard.editTimetableView.instantiateInitialViewController()!
            let wrappedVC = UINavigationController(rootViewController: rootVC)
            present(wrappedVC,
                    animated: true,
                    completion: nil)
        }
    }
}
