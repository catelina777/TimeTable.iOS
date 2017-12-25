//
//  Timetable+UICollectionViewDelegateFlowLayout.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/05/09.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit

extension TimetableVC: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        switch collectionView.tag {
        case 0:
            return CGSize(width: collectionView.bounds.width / 6,
                          height: collectionView.bounds.height)
        case 1:
            return CGSize(width: collectionView.bounds.width,
                          height: collectionView.bounds.height / 6)
        case 2:
            return CGSize(width: collectionView.bounds.width / 6,
                          height: collectionView.bounds.height / 6)
        default:
            return CGSize.zero
        }
    }
}
