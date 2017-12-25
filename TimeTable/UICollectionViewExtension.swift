//
//  UICollectionViewExtension.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/05/09.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit

extension UICollectionView {

    func register<T: UICollectionViewCell>(cellType: T.Type) {
        let className = cellType.className
        let nib = UINib(nibName: className,
                        bundle: nil)
        register(nib,
                 forCellWithReuseIdentifier: className)
    }

    func register<T: UICollectionViewCell>(cellTypes: [T.Type]) {
        cellTypes.forEach {
            register(cellType: $0)
        }
    }

    func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        let className = type.className
        return dequeueReusableCell(withReuseIdentifier: className,
                                   for: indexPath) as! T
    }
}
