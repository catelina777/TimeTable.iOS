//
//  ColorPicker+UITableViewDatasource.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/06.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

extension ColorPickerVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return Palette.count.rawValue
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(cellType: ColorPickerCell.self,
                                                 for: indexPath)
        let index = indexPath.row
        let color = Palette.getColor(by: index)
        let colorName = Palette.getName(by: index)

        cell.set(color: color,
                 colorName: colorName)

        return cell
    }

    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        let color = Palette.getColor(by: index)
        topBarView.playExpandingAnimation(with: color)
    }
}
