//
//  ColorPickerVC.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/06.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material
import MaterialComponents.MaterialPalettes

class ColorPickerVC: BaseVC {

    @IBOutlet weak var backButton: IconButton!
    @IBOutlet weak var colorPickerTableView: TableView!
    @IBOutlet weak var topBarView: TopBarView!
    @IBOutlet weak var topBarTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTableView()
        prepareTopBar()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        UIApplication.shared.statusBarStyle = .lightContent
    }
}

extension ColorPickerVC {

    @IBAction func didPressBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
