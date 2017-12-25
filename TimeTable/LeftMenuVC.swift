//
//  LeftMenuVC.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/28.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material
import MaterialComponents.MaterialPalettes

class LeftMenuVC: UIViewController {

    @IBOutlet weak var settingButton: IconButton! {
        didSet {
            settingButton.image = R.image.ic_settings()?.withRenderingMode(.alwaysTemplate)
            settingButton.tintColor = .gray
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .fade
    }
}
