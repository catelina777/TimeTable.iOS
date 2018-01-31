//
//  MainVC.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/27.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

final class MainVC: UIViewController {

    @IBOutlet weak var menuButton: IconButton! {
        didSet {
            menuButton.image = R.image.ic_menu()?.withRenderingMode(.alwaysTemplate)
            menuButton.tintColor = .gray
            menuButton.addTarget(self,
                                 action: #selector(didPressMenuButton),
                                 for: .touchDown)
        }
    }

    @IBOutlet weak var dayButton: IconButton! {
        didSet {
            dayButton.image = R.image.ic_view_day()?.withRenderingMode(.alwaysTemplate)
            dayButton.tintColor = .gray
        }
    }

    @IBOutlet weak var weekButton: IconButton! {
        didSet {
            weekButton.image = R.image.ic_view_week()?.withRenderingMode(.alwaysTemplate)
            weekButton.tintColor = .gray
        }
    }

    @IBOutlet weak var toolBarV: ToolBarV! {
        didSet {
            toolBarV.depthPreset = .depth1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTimetable()
    }
}

extension MainVC {

    @objc func didPressMenuButton() {
        sideMenuController?.showLeftViewAnimated()
    }
}
