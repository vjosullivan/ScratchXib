//
//  AppDelegate.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let personViewController = UIViewController()
        personViewController.view.backgroundColor = UIColor.red
        window!.rootViewController = personViewController
        window!.makeKeyAndVisible()

        return true
    }
}

