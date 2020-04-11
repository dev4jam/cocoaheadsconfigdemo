//
//  AppDelegate.swift
//  ConfigDemo
//
//  Created by Dmitry Klimkin on 11/4/20.
//  Copyright © 2020 Dmitry Klimkin. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print(Config.baseURL)
        print(L10n.okActionTitle)
        
        let image = UIImage(asset: Asset.addIcon)
        
        print(image)
        
        return true
    }
}

