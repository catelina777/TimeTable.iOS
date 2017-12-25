//
//  AppNavigationController.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/17.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

class AppNavigationDrawerController: NavigationDrawerController {
    open override func prepare() {
        super.prepare()
        delegate = self
    }
}

extension AppNavigationDrawerController: NavigationDrawerControllerDelegate {

}
