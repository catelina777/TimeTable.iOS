//
//  AppDelegate.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/10.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import LGSideMenuController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]? = nil) -> Bool {
        let mainVC = R.storyboard.main.instantiateInitialViewController()
        let leftVC = R.storyboard.leftMenu.instantiateInitialViewController()
        let rootVC = LGSideMenuController(rootViewController: mainVC,
                                          leftViewController: leftVC,
                                          rightViewController: nil)
        rootVC.sideMenuController?.leftViewWidth = UIScreen.main.bounds.width * 0.8
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }
}
