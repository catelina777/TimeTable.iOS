//
//  UITableViewExtension.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/05/22.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit

extension UITableView {

    func register<T: UITableViewCell>(cellType: T.Type) {
        let className = cellType.className
        let nib = UINib(nibName: className,
                        bundle: nil)
        register(nib, forCellReuseIdentifier: className)
    }

    func register<T: UITableViewCell>(cellTypes: [T.Type]) {
        cellTypes.forEach {
            register(cellType: $0)
        }
    }

    func dequeueReusableCell<T: UITableViewCell>(cellType: T.Type, for indexPath: IndexPath) -> T {

        return dequeueReusableCell(withIdentifier: cellType.className,
                                   for: indexPath) as! T
    }
}
