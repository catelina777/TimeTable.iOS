//
//  BaseVC.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/03.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {

    var themeColor: UIColor!
    var buttonColor: UIColor!
    var primaryFontColor: UIColor!
    var secondFontColor: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareButtonColor()
        prepareFontColor()
        prepareThemeColor()
    }
}
